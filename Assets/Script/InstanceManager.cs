using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using ZLMsg;

public class InstanceManager : MonoBehaviour, IMsgReceiver
{
    public ModeController modeController;
    public Transform instancePos;
    [Header("模型列表")]
    public List<ModelTable> modelList;

    private GameObject curModel;
    private GameObject curInitModel;

    void Start()
    {
        this.RegisterLogicMsg(MsgName.MSG_INSTANCE_MODEL, InstanceModel);
    }

    private void InstanceModel(IMsgParam obj)
    {
        ModelData modelData = obj as ModelData;
        Debug.Log("实例化模型：" + modelData.modelName);

        for (int i = 0; i < modelList.Count; i++)
        {
            if (modelList[i].modelName == modelData.modelName.ToLower())
            {
                curModel = modelList[i].model;
            }
        }

        curInitModel = Instantiate(curModel, instancePos.position, Quaternion.identity, instancePos);
        curInitModel.layer = 9;
        modeController.CurControllerMode = ControllerMode.FPS;
    }

    void Update()
    {
        if (Input.GetMouseButtonDown(0))
        {
            if (curInitModel != null)
            {
                curInitModel.GetComponent<Rigidbody>().isKinematic = false;
                curInitModel.GetComponent<Collider>().enabled = true;
                curInitModel.transform.parent = null;
            }
        }
    }

    public void DeleteModel()
    {
        if (modeController.CurSelectObj != null)
        {
            Destroy(modeController.CurSelectObj);
            modeController.modelControllerPlane.SetActive(false);
        }
    }

    public void MoveModel()
    {
        curInitModel = modeController.CurSelectObj;
        curInitModel.transform.parent = instancePos;
        curInitModel.transform.localPosition = Vector3.zero;
        curInitModel.GetComponent<Rigidbody>().isKinematic = true;
        curInitModel.GetComponent<Collider>().enabled = false;
        modeController.CurControllerMode = ControllerMode.FPS;
        modeController.modelControllerPlane.SetActive(false);
    }
}

[Serializable]
public class ModelTable
{
    public string modelName;
    public GameObject model;
}