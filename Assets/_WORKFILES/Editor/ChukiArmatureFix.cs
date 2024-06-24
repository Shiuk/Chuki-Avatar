using UnityEditor;
using UnityEngine;
using UnityEngine.UIElements;
using UnityEditor.UIElements;
using System.Collections;
using UnityEngine.Animations;
using VRC.SDK3.Dynamics.Contact.Components;
using VRC.SDK3.Dynamics.PhysBone.Components;

public class ChukiArmatureFix : EditorWindow
{
    [MenuItem("Tools/Chuki/Armature Fix")]
    public static void ShowExample()
    {
        ChukiArmatureFix wnd = GetWindow<ChukiArmatureFix>();
        wnd.titleContent = new GUIContent("Armature Fix");
    }

    // Declare variables
    GameObject myGParentObject, myParentObject, myNewObject, myRefObject;
    ConstraintSource constraintSource;
    //Vector3 zeroPosition;
    //static zeroPosition = new Vector3(0.0f, 0.0f, 0.0f);

    public void OnGUI()
    {
        myRefObject = GameObject.Find("Hips.L.REF");
        if (!myRefObject)
        {
            GUILayout.Button("Missing Reference Object:\nHips.L.REF", GUILayout.Height(50));
        }
        else
        {
            if (GUILayout.Button("Apply Armature Fix", GUILayout.Height(50)))
            {
                RunArmatureFix();
            }
        }
        if (GUILayout.Button("Apply Scripts", GUILayout.Height(50)))
        {
            //
            RunAttachScripts();
        }

        if (GUILayout.Button("Test", GUILayout.Height(50)))
        {
            //
            myNewObject = GameObject.Find("Hips.MMD.L");
            VRCContactReceiver VRCCR = myNewObject.GetComponent(typeof(VRCContactReceiver)) as VRCContactReceiver;
            //Debug.Log(VRCCR.collisionTags);
            //Debug.Log(VRCCR.collisionValue);
            foreach (var tag in VRCCR.collisionTags)
            {
                Debug.Log("List Item:" + tag);
            }
            VRCCR.collisionTags.Add("AnkleR");
        }
    }

    void RunArmatureFix() {
            ////////////////////////////////////////////
            //Add Hip GameObjects
            myParentObject = GameObject.Find("Hips");
            myNewObject = new GameObject("Hips.MMD.L");
            myNewObject.transform.SetParent(myParentObject.transform);
            myNewObject.transform.localPosition = new Vector3(0, 0, 0);
            // Add VRC Scripts
            VRCContactReceiver VRCCR = myNewObject.AddComponent(typeof(VRCContactReceiver)) as VRCContactReceiver;
            VRCCR.radius = 0.25f;
            VRCCR.position = new Vector3(0, 0.1f, 0);
            
            VRCCR.allowSelf = true;
            VRCCR.allowOthers = false;
            VRCCR.parameter = "LegL";
        VRCCR.collisionTags.Add("AnkleL");
        // couldn't figure out how to set Receiver Type, so instead copy and paste it from a reference component.
        //Debug.Log("Here 2 : " + VRCCR.receiverType.GetType());



        VRCContactReceiver VRCCRref = myRefObject.GetComponent(typeof(VRCContactReceiver)) as VRCContactReceiver;
            VRCCR.receiverType = VRCCRref.receiverType;
            //Debug.Log("Here 2: " + VRCCRref.collision);

            myNewObject = new GameObject("Hips.MMD.R");
            myNewObject.transform.SetParent(myParentObject.transform);
            myNewObject.transform.localPosition = new Vector3(0, 0, 0);
            // Add VRC Scripts
            VRCCR = myNewObject.AddComponent(typeof(VRCContactReceiver)) as VRCContactReceiver;
            VRCCR.radius = 0.25f;
            VRCCR.position = new Vector3(0, 0.1f, 0);

            VRCCR.allowSelf = true;
            VRCCR.allowOthers = false;
            VRCCR.parameter = "LegR";
            VRCCR.receiverType = VRCCRref.receiverType;
        VRCCR.collisionTags.Add("AnkleR");

        ///////////////////////////////////////////////////////
        //Add UpLeg.L Constraints
        //myParentObject = GameObject.Find("UpLeg.L");
        //RotationConstraint rc = myParentObject.AddComponent(typeof(RotationConstraint)) as RotationConstraint;
        //
        //myNewObject = new GameObject("UpLeg.L.TPose");
        //myNewObject.transform.SetParent(myParentObject.transform);
        //myNewObject.transform.localPosition = new Vector3(0, 0, 0);
        //myNewObject.transform.localRotation = Quaternion.Euler(0, 0, 0);
        //// add constraint
        //constraintSource.sourceTransform = myNewObject.transform;
        //constraintSource.weight = 1;
        //rc.AddSource(constraintSource);
        //
        //myNewObject = new GameObject("UpLeg.L.Fix");
        //myNewObject.transform.SetParent(myParentObject.transform);
        //myNewObject.transform.localPosition = new Vector3(0, 0, 0);
        //myNewObject.transform.localRotation = Quaternion.Euler(12.76f, 9.8f, -9.15f);
        //// add constraint
        //constraintSource.sourceTransform = myNewObject.transform;
        //constraintSource.weight = 0;
        //rc.AddSource(constraintSource);
        //
        //rc.constraintActive = true;
        //rc.locked = true;

        //populate Rotation Constraint component
        //RotationConstraint rc = myParentObject.AddComponent(typeof(RotationConstraint)) as RotationConstraint;

        ///////////////////////////////////////////////////////
        //Add UpLeg.R Constraints
        //myParentObject = GameObject.Find("UpLeg.R");
        //rc = myParentObject.AddComponent(typeof(RotationConstraint)) as RotationConstraint;
        //
        //myNewObject = new GameObject("UpLeg.R.TPose");
        //myNewObject.transform.SetParent(myParentObject.transform);
        //myNewObject.transform.localPosition = new Vector3(0, 0, 0);
        //myNewObject.transform.localRotation = Quaternion.Euler(0, 0, 0);
        //// add constraint
        //constraintSource.sourceTransform = myNewObject.transform;
        //constraintSource.weight = 1;
        //rc.AddSource(constraintSource);
        //
        //myNewObject = new GameObject("UpLeg.R.Fix");
        //myNewObject.transform.SetParent(myParentObject.transform);
        //myNewObject.transform.localPosition = new Vector3(0, 0, 0);
        //myNewObject.transform.localRotation = Quaternion.Euler(8.4f, 0.79f, 11.22f);
        //// add constraint
        //constraintSource.sourceTransform = myNewObject.transform;
        //constraintSource.weight = 0;
        //rc.AddSource(constraintSource);
        //
        //rc.constraintActive = true;
        //rc.locked = true;

        //populate Rotation Constraint component
        //RotationConstraint rc = myParentObject.AddComponent(typeof(RotationConstraint)) as RotationConstraint;

        ///////////////////////////////////////////////////////
        //Add Leg.L
        myGParentObject = GameObject.Find("Leg.L");
            myParentObject = new GameObject("Leg.L.Constraints");
            myParentObject.transform.SetParent(myGParentObject.transform);
            myParentObject.transform.localPosition = new Vector3(0, 0, 0);
            myParentObject.transform.localRotation = Quaternion.Euler(0, 0, 0);
            //populate Rotation Constraint component
            RotationConstraint rc = myGParentObject.AddComponent(typeof(RotationConstraint)) as RotationConstraint;

            //myParentObject = GameObject.Find("Leg.L.Constraints");
            myNewObject = new GameObject("Leg.L.TPose");
            myNewObject.transform.SetParent(myParentObject.transform);
            myNewObject.transform.localPosition = new Vector3(0, 0, 0);
            myNewObject.transform.localRotation = Quaternion.Euler(0, 0, 0);

            constraintSource.sourceTransform = myNewObject.transform;
            constraintSource.weight = 1;
            rc.AddSource(constraintSource);

            myNewObject = new GameObject("Leg.L.Fix");
            myNewObject.transform.SetParent(myParentObject.transform);
            myNewObject.transform.localPosition = new Vector3(0, 0, 0);
            myNewObject.transform.localRotation = Quaternion.Euler(-18.75f, -4.52f, 3.12f);

            constraintSource.sourceTransform = myNewObject.transform;
            constraintSource.weight = 0;
            rc.AddSource(constraintSource);

            // Generate all the stepping targets
            for (int i = 1; i < 21; i++)
            {
                string boneName = "Leg.L." + i.ToString();

                myNewObject = new GameObject(boneName);
                myNewObject.transform.SetParent(myParentObject.transform);
                myNewObject.transform.localPosition = new Vector3(0, 0, 0);
                myNewObject.transform.localRotation = Quaternion.Euler(((float)i*1.3f), 0, 0);
                constraintSource.sourceTransform = myNewObject.transform;
                constraintSource.weight = 0;
                rc.AddSource(constraintSource);
            }

            rc.constraintActive = true;
            rc.locked = true;

            ///////////////////////////////////////////////////////
            //Add Leg.R
            myGParentObject = GameObject.Find("Leg.R");
            myParentObject = new GameObject("Leg.R.Constraints");
            myParentObject.transform.SetParent(myGParentObject.transform);
            myParentObject.transform.localPosition = new Vector3(0, 0, 0);
            myParentObject.transform.localRotation = Quaternion.Euler(0, 0, 0);
            //populate Rotation Constraint component
            rc = myGParentObject.AddComponent(typeof(RotationConstraint)) as RotationConstraint;

            //myParentObject = GameObject.Find("Leg.R.Constraints");
            myNewObject = new GameObject("Leg.R.TPose");
            myNewObject.transform.SetParent(myParentObject.transform);
            myNewObject.transform.localPosition = new Vector3(0, 0, 0);
            myNewObject.transform.localRotation = Quaternion.Euler(0, 0, 0);

            constraintSource.sourceTransform = myNewObject.transform;
            constraintSource.weight = 1;
            rc.AddSource(constraintSource);

            myNewObject = new GameObject("Leg.R.Fix");
            myNewObject.transform.SetParent(myParentObject.transform);
            myNewObject.transform.localPosition = new Vector3(0, 0, 0);
            myNewObject.transform.localRotation = Quaternion.Euler(-15.18f, 2.09f, -9.03f);

            constraintSource.sourceTransform = myNewObject.transform;
            constraintSource.weight = 0;
            rc.AddSource(constraintSource);

            // Generate all the stepping targets
            for (int i = 1; i < 21; i++)
            {
                string boneName = "Leg.R." + i.ToString();

                myNewObject = new GameObject(boneName);
                myNewObject.transform.SetParent(myParentObject.transform);
                myNewObject.transform.localPosition = new Vector3(0, 0, 0);
                myNewObject.transform.localRotation = Quaternion.Euler(((float)i*1.1f), 0, 0);
                constraintSource.sourceTransform = myNewObject.transform;
                constraintSource.weight = 0;
                rc.AddSource(constraintSource);
            }

            rc.constraintActive = true;
            rc.locked = true;

            //////////////////////////////////////////////////////////////////
            //Add Foot GameObjects
            myParentObject = GameObject.Find("Foot.L");
            //rc = myParentObject.AddComponent(typeof(RotationConstraint)) as RotationConstraint;

            myNewObject = new GameObject("Foot.MMD.L");
            myNewObject.transform.SetParent(myParentObject.transform);
            myNewObject.transform.localPosition = new Vector3(0, 0, 0);
            myNewObject.transform.localRotation = Quaternion.Euler(0, 0, 0);
            // Add VRC Scripts
            VRCContactSender VRCCS = myNewObject.AddComponent(typeof(VRCContactSender)) as VRCContactSender;
            VRCCS.radius = 0.04f;
            VRCCS.position = new Vector3(0.03f, -0.16f, 0.06f);
        VRCCS.collisionTags.Add("AnkleL");

        //myNewObject = new GameObject("Foot.L.TPose");
        //myNewObject.transform.SetParent(myParentObject.transform);
        //myNewObject.transform.localPosition = new Vector3(0, 0, 0);
        //myNewObject.transform.localRotation = Quaternion.Euler(0, 0, 0);
        //constraintSource.sourceTransform = myNewObject.transform;
        //constraintSource.weight = 1;
        //rc.AddSource(constraintSource);
        //
        //myNewObject = new GameObject("Foot.L.Fix");
        //myNewObject.transform.SetParent(myParentObject.transform);
        //myNewObject.transform.localPosition = new Vector3(0, 0, 0);
        //myNewObject.transform.localRotation = Quaternion.Euler(5.8f, 1.61f, 7.3f);
        //constraintSource.sourceTransform = myNewObject.transform;
        //constraintSource.weight = 0;
        //rc.AddSource(constraintSource);
        //
        //rc.constraintActive = true;
        //rc.locked = true;

        //////////
        myParentObject = GameObject.Find("Foot.R");
            //rc = myParentObject.AddComponent(typeof(RotationConstraint)) as RotationConstraint;

            myNewObject = new GameObject("Foot.MMD.R");
            myNewObject.transform.SetParent(myParentObject.transform);
            myNewObject.transform.localPosition = new Vector3(0, 0, 0);
            myNewObject.transform.localRotation = Quaternion.Euler(0, 0, 0);
            // Add VRC Scripts
            VRCCS = myNewObject.AddComponent(typeof(VRCContactSender)) as VRCContactSender;
            VRCCS.radius = 0.04f;
            VRCCS.position = new Vector3(-0.03f, -0.16f, 0.06f);
        VRCCS.collisionTags.Add("AnkleR");

        //myNewObject = new GameObject("Foot.R.TPose");
        //myNewObject.transform.SetParent(myParentObject.transform);
        //myNewObject.transform.localPosition = new Vector3(0, 0, 0);
        //myNewObject.transform.localRotation = Quaternion.Euler(0, 0, 0);
        //constraintSource.sourceTransform = myNewObject.transform;
        //constraintSource.weight = 1;
        //rc.AddSource(constraintSource);
        //
        //myNewObject = new GameObject("Foot.R.Fix");
        //myNewObject.transform.SetParent(myParentObject.transform);
        //myNewObject.transform.localPosition = new Vector3(0, 0, 0);
        //myNewObject.transform.localRotation = Quaternion.Euler(8.9f, 3.0f, 5.18f);
        //constraintSource.sourceTransform = myNewObject.transform;
        //constraintSource.weight = 0;
        //rc.AddSource(constraintSource);
        //
        //rc.constraintActive = true;
        //rc.locked = true;

        ////////////////////////
        //TOES

        //myParentObject = GameObject.Find("ToeBase.L");
        //rc = myParentObject.AddComponent(typeof(RotationConstraint)) as RotationConstraint;
        //
        //myNewObject = new GameObject("ToeBase.L.TPose");
        //myNewObject.transform.SetParent(myParentObject.transform);
        //myNewObject.transform.localPosition = new Vector3(0, 0, 0);
        //myNewObject.transform.localRotation = Quaternion.Euler(0, 0, 0);
        //constraintSource.sourceTransform = myNewObject.transform;
        //constraintSource.weight = 1;
        //rc.AddSource(constraintSource);
        //
        //myNewObject = new GameObject("ToeBase.L.Fix");
        //myNewObject.transform.SetParent(myParentObject.transform);
        //myNewObject.transform.localPosition = new Vector3(0, 0, 0);
        //myNewObject.transform.localRotation = Quaternion.Euler(0.99f, 15.19f, -7.4f);
        //constraintSource.sourceTransform = myNewObject.transform;
        //constraintSource.weight = 0;
        //rc.AddSource(constraintSource);
        //
        //rc.constraintActive = true;
        //rc.locked = true;

        //////////
        //myParentObject = GameObject.Find("ToeBase.R");
        //rc = myParentObject.AddComponent(typeof(RotationConstraint)) as RotationConstraint;
        //
        //myNewObject = new GameObject("ToeBase.R.TPose");
        //myNewObject.transform.SetParent(myParentObject.transform);
        //myNewObject.transform.localPosition = new Vector3(0, 0, 0);
        //myNewObject.transform.localRotation = Quaternion.Euler(0, 0, 0);
        //constraintSource.sourceTransform = myNewObject.transform;
        //constraintSource.weight = 1;
        //rc.AddSource(constraintSource);
        //
        //myNewObject = new GameObject("ToeBase.R.Fix");
        //myNewObject.transform.SetParent(myParentObject.transform);
        //myNewObject.transform.localPosition = new Vector3(0, 0, 0);
        //myNewObject.transform.localRotation = Quaternion.Euler(-4.54f, -0.12f, -5.22f);
        //constraintSource.sourceTransform = myNewObject.transform;
        //constraintSource.weight = 0;
        //rc.AddSource(constraintSource);
        //
        //rc.constraintActive = true;
        //rc.locked = true;


        /////////// test junk below this point
        /////////////
        //VRCCR.allowSelf = true;
        //VRCCR.allowOthers = false;
        //Debug.Log("Here 2 : " + VRCCR.receiverType.GetType());
        //VRCCR.parameter = "LegL";


        ///////////////
        // Add Rotation Constraint
        //myParentObject = GameObject.Find("Test");
        //Debug.Log(myParentObject.GetComponents(typeof(Component))[1]);
        //VRCContactReceiver VRCCR = myNewObject.AddComponent(typeof(VRCContactReceiver)) as VRCContactReceiver;
        //

        //sc.AddSource(myNewObject.RotationConstraint.GetSource(0));
        //myNewObject = myNewObject.ConstraintSource(0);
        //sc.AddSource(myNewObject);

        //myParentObject = GameObject.Find("Test");
        //rc = myParentObject.AddComponent(typeof(RotationConstraint)) as RotationConstraint;
        //rc.constraintActive = false;
        //constraintSource.sourceTransform = myNewObject.transform;
        //constraintSource.weight = 0;
        //rc.AddSource(constraintSource);
    }
    void RunAttachScripts()
    {
        VRCPhysBoneCollider VRCPBC;
        VRCPhysBone VRCPB;
        VRCContactReceiver VRCCR;
        VRCContactSender VRCCS;

        // Create Game Objects
        GameObject gameobjectParent = GameObject.Find("Extra");
        GameObject newGameObject = new GameObject();
        newGameObject.name = "KWood";
        newGameObject.transform.SetParent(gameobjectParent.transform);

        gameobjectParent = GameObject.Find("KWood");
        newGameObject = new GameObject();
        newGameObject.name = "BaseID: Base";
        newGameObject.transform.SetParent(gameobjectParent.transform);

        newGameObject = new GameObject();
        newGameObject.name = "HairID: RENAME";
        newGameObject.transform.SetParent(gameobjectParent.transform);

        newGameObject = new GameObject();
        newGameObject.name = "TPOSE: Standard";
        newGameObject.transform.SetParent(gameobjectParent.transform);

        // Drag in Scripts Prefab
        gameobjectParent = GameObject.Find("Extra");
        var asset = AssetDatabase.LoadAssetAtPath<GameObject>($"Assets/Chuki/Scripts/Scripts.prefab");
        var prefab = PrefabUtility.InstantiatePrefab(asset) as GameObject;
        
        prefab.transform.SetParent(gameobjectParent.transform);

        //
        gameobjectParent = GameObject.Find("FloorPlane"); // SCRIPT
        newGameObject = GameObject.Find("Armature"); // BONE
        VRCPBC = gameobjectParent.GetComponent(typeof(VRCPhysBoneCollider)) as VRCPhysBoneCollider;
        VRCPBC.rootTransform = newGameObject.transform;

        gameobjectParent = GameObject.Find("Ear.Script"); // SCRIPT
        newGameObject = GameObject.Find("EarRoot"); // BONE
        VRCPB = gameobjectParent.GetComponent(typeof(VRCPhysBone)) as VRCPhysBone;
        VRCPB.rootTransform = newGameObject.transform;

        gameobjectParent = GameObject.Find("EarColliderR"); // SCRIPT
        newGameObject = GameObject.Find("EarRoot.R"); // BONE
        VRCPBC = gameobjectParent.GetComponent(typeof(VRCPhysBoneCollider)) as VRCPhysBoneCollider;
        VRCPBC.rootTransform = newGameObject.transform;

        gameobjectParent = GameObject.Find("EarColliderL"); // SCRIPT
        newGameObject = GameObject.Find("EarRoot.L"); // BONE
        VRCPBC = gameobjectParent.GetComponent(typeof(VRCPhysBoneCollider)) as VRCPhysBoneCollider;
        VRCPBC.rootTransform = newGameObject.transform;

        gameobjectParent = GameObject.Find("Tail.Script"); // SCRIPT
        newGameObject = GameObject.Find("TailEnd"); // BONE
        VRCPBC = gameobjectParent.GetComponent(typeof(VRCPhysBoneCollider)) as VRCPhysBoneCollider;
        VRCPBC.rootTransform = newGameObject.transform;

        gameobjectParent = GameObject.Find("Tail.Script"); // SCRIPT
        newGameObject = GameObject.Find("TailRoot"); // BONE
        VRCPB = gameobjectParent.GetComponent(typeof(VRCPhysBone)) as VRCPhysBone;
        VRCPB.rootTransform = newGameObject.transform;
        newGameObject = GameObject.Find("Tail.Bow");
        VRCPB.ignoreTransforms[0] = newGameObject.transform;
        newGameObject = GameObject.Find("Fundoshi.Tail");
        VRCPB.ignoreTransforms[1] = newGameObject.transform;

        //add tail collider elements

        gameobjectParent = GameObject.Find("Tail.2.Collider"); // SCRIPT
        newGameObject = GameObject.Find("Tail2"); // BONE
        VRCPBC = gameobjectParent.GetComponent(typeof(VRCPhysBoneCollider)) as VRCPhysBoneCollider;
        VRCPBC.rootTransform = newGameObject.transform;

        gameobjectParent = GameObject.Find("Tail.3.Collider"); // SCRIPT
        newGameObject = GameObject.Find("Tail3"); // BONE
        VRCPBC = gameobjectParent.GetComponent(typeof(VRCPhysBoneCollider)) as VRCPhysBoneCollider;
        VRCPBC.rootTransform = newGameObject.transform;

        gameobjectParent = GameObject.Find("Tail.4.Collider"); // SCRIPT
        newGameObject = GameObject.Find("Tail4"); // BONE
        VRCPBC = gameobjectParent.GetComponent(typeof(VRCPhysBoneCollider)) as VRCPhysBoneCollider;
        VRCPBC.rootTransform = newGameObject.transform;

        //gameobjectParent = GameObject.Find("GlassesScript"); // SCRIPT
        //newGameObject = GameObject.Find("Glasses"); // BONE
        //VRCCR = gameobjectParent.GetComponent(typeof(VRCContactReceiver)) as VRCContactReceiver;
        //VRCCR.rootTransform = newGameObject.transform;

        //gameobjectParent = GameObject.Find("GlassesAngle"); // SCRIPT
        //newGameObject = GameObject.Find("UpperChest"); // BONE
        //VRCCS = gameobjectParent.GetComponent(typeof(VRCContactSender)) as VRCContactSender;
        //VRCCS.rootTransform = newGameObject.transform;
        //
        //gameobjectParent = GameObject.Find("GlassesTilt"); // SCRIPT
        //newGameObject = GameObject.Find("Head"); // BONE
        //VRCCR = gameobjectParent.GetComponent(typeof(VRCContactReceiver)) as VRCContactReceiver;
        //VRCCR.rootTransform = newGameObject.transform;

        gameobjectParent = GameObject.Find("NoseScript"); // SCRIPT
        newGameObject = GameObject.Find("Head"); // BONE
        VRCCR = gameobjectParent.GetComponent(typeof(VRCContactReceiver)) as VRCContactReceiver;
        VRCCR.rootTransform = newGameObject.transform;

        gameobjectParent = GameObject.Find("NoseSender"); // SCRIPT
        newGameObject = GameObject.Find("Head"); // BONE
        VRCCS = gameobjectParent.GetComponent(typeof(VRCContactSender)) as VRCContactSender;
        VRCCS.rootTransform = newGameObject.transform;

        // ScriptsPC

        gameobjectParent = GameObject.Find("Chest.Collider"); // SCRIPT
        newGameObject = GameObject.Find("Chest"); // BONE
        VRCPBC = gameobjectParent.GetComponent(typeof(VRCPhysBoneCollider)) as VRCPhysBoneCollider;
        VRCPBC.rootTransform = newGameObject.transform;

        gameobjectParent = GameObject.Find("Neck.Collider"); // SCRIPT
        newGameObject = GameObject.Find("Neck"); // BONE
        VRCPBC = gameobjectParent.GetComponent(typeof(VRCPhysBoneCollider)) as VRCPhysBoneCollider;
        VRCPBC.rootTransform = newGameObject.transform;

        gameobjectParent = GameObject.Find("Belly.Scripts"); // SCRIPT
        newGameObject = GameObject.Find("Belly"); // BONE
        VRCPBC = gameobjectParent.GetComponent(typeof(VRCPhysBoneCollider)) as VRCPhysBoneCollider;
        VRCPBC.rootTransform = newGameObject.transform;

        gameobjectParent = GameObject.Find("Belly.Scripts"); // SCRIPT
        newGameObject = GameObject.Find("Belly"); // BONE
        VRCPB = gameobjectParent.GetComponent(typeof(VRCPhysBone)) as VRCPhysBone;
        VRCPB.rootTransform = newGameObject.transform;

        gameobjectParent = GameObject.Find("Head.Collider"); // SCRIPT
        newGameObject = GameObject.Find("Head"); // BONE
        VRCPBC = gameobjectParent.GetComponent(typeof(VRCPhysBoneCollider)) as VRCPhysBoneCollider;
        VRCPBC.rootTransform = newGameObject.transform;

        gameobjectParent = GameObject.Find("Head.Collider"); // SCRIPT
        newGameObject = GameObject.Find("Head"); // BONE
        VRCCR = gameobjectParent.GetComponent(typeof(VRCContactReceiver)) as VRCContactReceiver;
        VRCCR.rootTransform = newGameObject.transform;

        gameobjectParent = GameObject.Find("Breast.Script"); // SCRIPT
        newGameObject = GameObject.Find("BreastRoot"); // BONE
        VRCPB = gameobjectParent.GetComponent(typeof(VRCPhysBone)) as VRCPhysBone;
        VRCPB.rootTransform = newGameObject.transform;

        gameobjectParent = GameObject.Find("Whiskers.Script"); // SCRIPT
        newGameObject = GameObject.Find("WhiskerRoot"); // BONE
        VRCPB = gameobjectParent.GetComponent(typeof(VRCPhysBone)) as VRCPhysBone;
        VRCPB.rootTransform = newGameObject.transform;

        gameobjectParent = GameObject.Find("Left.Toes.Script"); // SCRIPT
        newGameObject = GameObject.Find("ToeBase.L"); // BONE
        VRCPB = gameobjectParent.GetComponent(typeof(VRCPhysBone)) as VRCPhysBone;
        VRCPB.rootTransform = newGameObject.transform;

        gameobjectParent = GameObject.Find("Right.Toes.Script"); // SCRIPT
        newGameObject = GameObject.Find("ToeBase.R"); // BONE
        VRCPB = gameobjectParent.GetComponent(typeof(VRCPhysBone)) as VRCPhysBone;
        VRCPB.rootTransform = newGameObject.transform;

        gameobjectParent = GameObject.Find("Tongue.Script"); // SCRIPT
        newGameObject = GameObject.Find("Tongue.Root"); // BONE
        VRCPB = gameobjectParent.GetComponent(typeof(VRCPhysBone)) as VRCPhysBone;
        VRCPB.rootTransform = newGameObject.transform;
    }
    }