using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.UI;
using UnityStandardAssets.Characters.FirstPerson;

public class ModeController : MonoBehaviour
{
    public FirstPersonController firstController;
    public GameObject UIPlane;
    public GameObject modelControllerPlane;
    public LayerMask layerMask;
    public Text hint;

    private GameObject curSelectGameObject;
    private bool isShowCursor;
    private ControllerMode mControllerMode;
    public ControllerMode CurControllerMode
    {
        get
        {
            return mControllerMode;
        }
        set
        {
            switch (value)
            {
                case ControllerMode.FPS:
                    SetHintContent("按 T 键进入菜单模式");
                    isShowCursor = false;
                    UIPlane.SetActive(false);
                    firstController.enabled = true;
                    Cursor.lockState = CursorLockMode.Locked;
                    break;
                case ControllerMode.Operation:
                    SetHintContent("按 T 键或 返回 退出菜单模式");
                    isShowCursor = true;
                    UIPlane.SetActive(true);
                    firstController.enabled = false;
                    Cursor.lockState = CursorLockMode.None;
                    break;
            }
            mControllerMode = value;
        }
    }

    public GameObject CurSelectObj
    {
        get
        {
            return curSelectGameObject;
        }
    }

    void Start()
    {
        CurControllerMode = ControllerMode.FPS;
        UIPlane.SetActive(false);
    }

    public void ReturnFPC()
    {
        CurControllerMode = ControllerMode.FPS;
    }

    void Update()
    {
        Cursor.visible = isShowCursor;
        if (Input.GetKeyDown(KeyCode.T))
        {
            if (mControllerMode == ControllerMode.Operation)
                CurControllerMode = ControllerMode.FPS;
            else
                CurControllerMode = ControllerMode.Operation;
        }

        if (mControllerMode == ControllerMode.Operation)
        {
            if (Input.GetMouseButtonDown(0))
            {
                if (!EventSystem.current.IsPointerOverGameObject())
                {
                    Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);
                    RaycastHit hitInfo;
                    if (Physics.Raycast(ray, out hitInfo, 10000, layerMask))
                    {
                        curSelectGameObject = hitInfo.transform.gameObject;
                        modelControllerPlane.SetActive(true);
                    }
                }
            }
        }
    }

    public void SetHintContent(string _content)
    {
        if (hint != null)
        {
            hint.text = _content;
        }
    }
}

public enum ControllerMode
{
    FPS,
    Operation
}