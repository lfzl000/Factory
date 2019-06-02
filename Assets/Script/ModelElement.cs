using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using ZLMsg;

public class ModelElement : MonoBehaviour, IMsgSender
{
    public Button m_Button;
    public string modelName;
    public Text button_text;

    void Start()
    {
        m_Button.onClick.AddListener(InstanceModel);
        button_text.text = modelName;
    }

    private void InstanceModel()
    {
        ModelData modelData = new ModelData();
        modelData.modelName = modelName;
        this.SendLogicMsg(MsgName.MSG_INSTANCE_MODEL, modelData);
    }
}

public class ModelData : IMsgParam
{
    public string modelName;
}