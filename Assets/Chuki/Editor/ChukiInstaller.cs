using UnityEditor;
using UnityEngine;
using UnityEditor.SceneManagement;
using UnityEngine.SceneManagement;
using UnityEngine.UIElements;
using UnityEngine.Animations;
using UnityEditor.UIElements;
using System.Collections;
using System.Collections.Generic;
using System.IO;
using VRC_AvatarDescriptor = VRC.SDK3.Avatars.Components.VRCAvatarDescriptor;
using VRC.SDK3.Dynamics.Contact.Components;
using VRC.SDK3.Dynamics.PhysBone.Components;

// Chuji please forgive me, I rushed this and there's a lot of clean up that can be done ;u;
// Also, if you are reading this: This is not only baby's first time making scripts for Unity but baby's first time working with c#.
// There are many things that need to be optimized/changed. Such as using SerializedObjects >o>;

namespace ChukiInstaller
{
    /*// TODO: Reference for Import/Export Handler
    public class HandleTextFile 
    {
        [MenuItem("Tools/Export Chuki")]
        static void WriteString()
        {
            string path = "Assets/Chuki/Backups/test.txt";
            //Write some text to the test.txt file
            StreamWriter writer = new StreamWriter(path, true);
            writer.WriteLine("Test");
            writer.Close();
            //Re-import the file to update the reference in the editor
            AssetDatabase.ImportAsset(path);
            //TextAsset asset = Resources.Load("test.txt");
            //Print the text from the file
            //Debug.Log(asset.text);
        }
        [MenuItem("Tools/Read file")]
        static void ReadString()
        {
            string path = "Assets/Chuki/Editor/Resources/Changelog.txt";
            //Read the text from directly from the test.txt file
            StreamReader reader = new StreamReader(path);
            Debug.Log(reader.ReadToEnd());
            reader.Close();
        }
    }
    */
    public class HandleTextFile
    {
        public static void WriteString(string key, float value)
        {
            string SceneName = EditorSceneManager.GetActiveScene().name;
            string path = $"Assets/Chuki/MyChukis/{SceneName}/backup.txt";

            //Write some text to the test.txt file
            StreamWriter writer = new StreamWriter(path, false);
            writer.WriteLine("Work in Progress.");
            writer.WriteLine(key + ":" + value.ToString());

            writer.Close();
            //Re-import the file to update the reference in the editor
            
            AssetDatabase.ImportAsset(path);
            TextAsset asset = AssetDatabase.LoadAssetAtPath<TextAsset>($"Assets/Chuki/MyChukis/{SceneName}/backup.txt");
            //TextAsset asset = Resources.Load("backup.txt");
            //Print the text from the file
            //Debug.Log(asset.text);
        }
        public static void ReadString()
        {
            string SceneName = EditorSceneManager.GetActiveScene().name;
            string path = $"Assets/Chuki/MyChukis/{SceneName}/backup.txt";
            //Read the text from directly from the test.txt file

            StreamReader reader = new StreamReader(path);
            string s1, s2;
            float earFlop;
            while (reader.Peek() >= 0)
            {
                s1 = reader.ReadLine();
                s2 = "earFlop";
                if (s1.Contains(s2))
                {
                    s1 = s1.Replace("earFlop:", "");
                    earFlop = float.Parse(s1);
                    //Debug.Log(earFlop);
                }
            }

            //Debug.Log(reader.ReadToEnd());
            reader.Close();
        }
    }
    public class ChukiInstallerAssets : UnityEditor.Editor
    {
        public static void AddNewPrefab(string PrefabName, string tmpChukiName)
        {
            var asset = AssetDatabase.LoadAssetAtPath<GameObject>($"Assets/Chuki/SourceFiles/Prefabs/{PrefabName}.prefab");
            var prefab = PrefabUtility.InstantiatePrefab(asset) as GameObject;
            prefab.name = "My Chuki";
            ChukiCustomizer.ChukiHairSwap(0, false, false, "tmp");

            if (prefab)
            {
                prefab.name = tmpChukiName;

                StaticValue.SetupTail(true);
                //Setup Blendshapes
                GameObject obj = GameObject.Find("My Chuki/Body");
                ChukiHelper.DoAction.SetBlendShapeSize(obj, "GaugeEarringR", false);
                ChukiHelper.DoAction.SetBlendShapeSize(obj, "GaugeEarringL", false);
                ChukiHelper.DoAction.SetBlendShapeSize(obj, "Wristband_HIDE", false);
                ChukiHelper.DoAction.SetBlendShapeSize(obj, "ShoulderFluffs_HIDE", false);
                ChukiHelper.DoAction.SetBlendShapeSize(obj, "Garbanzos_HIDE", false);
                
                obj = GameObject.Find("My Chuki/Extra/Crystals");
                ChukiHelper.DoAction.SetBlendShapeSize(obj, "Tail_Ring_HIDE", false);
                ChukiHelper.DoAction.SetBlendShapeSize(obj, "Horn_Left_HIDE", false);
                ChukiHelper.DoAction.SetBlendShapeSize(obj, "Horn_Right_HIDE", false);
                ChukiHelper.DoAction.SetBlendShapeSize(obj, "Horn_Center_HIDE", false);
                ChukiHelper.DoAction.SetBlendShapeSize(obj, "GaugeL_HIDE", false);
                ChukiHelper.DoAction.SetBlendShapeSize(obj, "GaugeR_HIDE", false);
                ChukiHelper.DoAction.SetBlendShapeSize(obj, "Garbanzos_HIDE", false);
                ChukiHelper.DoAction.SetBlendShapeSize(obj, "Back_Left_(Wislow)_HIDE", false);
                ChukiHelper.DoAction.SetBlendShapeSize(obj, "Back_Right_(Skye)_HIDE", false);

                obj = GameObject.Find("Accessories");
                ChukiHelper.DoAction.SetBlendShapeSize(obj, "GaugeR_HIDE", false);
                ChukiHelper.DoAction.SetBlendShapeSize(obj, "GaugeL_HIDE", false);
                ChukiHelper.DoAction.SetBlendShapeSize(obj, "Glasses_Ty_HIDE", false);
                ChukiHelper.DoAction.SetBlendShapeSize(obj, "Glasses_Axtii_HIDE", false);
                ChukiHelper.DoAction.SetBlendShapeSize(obj, "EarTufts_HIDE", false);
                ChukiHelper.DoAction.SetBlendShapeSize(obj, "Lense_HIDE", false);
            }
        }
    }
    public class ChukiTailSection
    {
        public ChukiTailSection(string name, float rotation, bool curl)
        {
            Name = name;
            TailObject = GameObject.Find(name);
            if (curl == true)
            {
                TailObject.transform.Rotate(0f, 0f, rotation, Space.Self);
            }
        }
        public string Name { get; set; }
        public GameObject TailObject { get; set; }
    }
    public class ChukiCustomizer : MonoBehaviour
    {
        float chukiHeightFloat;

        static VRCPhysBone VRCPB;
        static VRCPhysBoneCollider VRCPBC;
        static Vector3 scaleChange;
        static GameObject mySource, myDestination;
        static GameObject rootChukiObject;
        static GameObject myAccessories, myChuki;
        static ParentConstraint pc;
        static ScaleConstraint sc;
        static ConstraintSource constraintSource;
        static string tmpName;
        static Material materialSource, materialDestination;
        SkinnedMeshRenderer skinnedMeshRenderer;
        SkinnedMeshRenderer skinnedMeshRendererREF;

        //change void function name to something more descriptive
        public static void RaceHeight(string HeightInUnits) // Method for Height Slider
        {
            var chukiHeightFloat = float.Parse(HeightInUnits); // convert user inputed string to float
            if (chukiHeightFloat != 0f)
            {
                rootChukiObject = GameObject.Find("My Chuki");
                if (rootChukiObject)
                {
                    scaleChange = new Vector3(chukiHeightFloat, chukiHeightFloat, chukiHeightFloat);
                    rootChukiObject.transform.localScale = scaleChange;
                }
                else
                {
                    Debug.LogError("Chuki Avatar installer: Failed to find the \"My Chuki\" GameObject in the Hierarchy, it was never generated, renamed, or is hidden in Scene.");
                }
            }
            else
            {
                Debug.LogError("Chuki Avatar Installer: Cannot set Avatar to a height of 0 units");
            }
        }
        public static void ChukiHairSwap(int hairSelected, bool mirror, bool QiuRace, string myChukiName) // Swapping Hairstyles. Destroy exiting hairstyle and Add new hairstyle
        {
            GameObject armatureParent, armatureReal;
            myChuki = GameObject.Find("My Chuki");
            string mirrorString = "";
            Transform myHairID;

            //TODO Figure out why this script is causing a critical failure pt1
            // Copy info from old hairstyle
            float Glasses_Ty_HIDE = 0.0f;
            float Glasses_Axtii_HIDE = 0.0f;
            float Ty_Lense = 0.0f;
            float Ty_Lense_Axtii = 0.0f;
            float Lense_HIDE = 0.0f;

            // Get existing values
            armatureParent = GameObject.Find("Accessories");
            if (armatureParent)
            {
                Glasses_Ty_HIDE = armatureParent.GetComponent<SkinnedMeshRenderer>().GetBlendShapeWeight(StaticValue.DictAccessories["Glasses_Ty_HIDE"]);
                Glasses_Axtii_HIDE = armatureParent.GetComponent<SkinnedMeshRenderer>().GetBlendShapeWeight(StaticValue.DictAccessories["Glasses_Axtii_HIDE"]);
                Ty_Lense = armatureParent.GetComponent<SkinnedMeshRenderer>().GetBlendShapeWeight(StaticValue.DictAccessories["Ty_Lense"]);
                Ty_Lense_Axtii = armatureParent.GetComponent<SkinnedMeshRenderer>().GetBlendShapeWeight(StaticValue.DictAccessories["Ty_Lense_Axtii"]);
                Lense_HIDE = armatureParent.GetComponent<SkinnedMeshRenderer>().GetBlendShapeWeight(StaticValue.DictAccessories["Lense_HIDE"]);
            }

            // Destroy old hairstyle if it exists.
            myAccessories = GameObject.Find("Accessories.Root");
            if (myAccessories)
            {
                // Destroy old Hairstyle
                DestroyImmediate(myAccessories, false);

                // Destroy old hairstyle script
                if (GameObject.Find("Hair.Ponytail.Script"))
                {
                    GameObject.Find("Hair.Ponytail.Script").transform.SetParent(GameObject.Find("Scripts").transform);
                }
                armatureParent = GameObject.Find("ScriptsHair");
                DestroyImmediate(armatureParent, false);
            }

            // Create new Hairstyle, sort options
            if (mirror) { mirrorString = "_m"; }
            //
            var asset = AssetDatabase.LoadAssetAtPath<GameObject>($"Assets/Chuki/SourceFiles/Prefabs/Hair/{StaticValue.chukiHairOptions[hairSelected]}{mirrorString}.prefab");
            var prefab = PrefabUtility.InstantiatePrefab(asset) as GameObject;
            prefab.name = "Accessories.Root";

            myAccessories = GameObject.Find("KWood");
            myHairID = myAccessories.transform.GetChild(1);
            myHairID.name = $"HairID: {StaticValue.chukiHairOptions[hairSelected]}{mirrorString}";

            armatureParent = GameObject.Find("Head"); // Bone to Parent Accessories to
            myAccessories = GameObject.Find("Accessories.Root");
            switch (QiuRace)
            {
                case true: // Qiu Chuki
                           // TODO: Maybe? I mean this works fine. Shiuky doesn't like to do math so instead let's convert to Aes, apply the object, then convert to Qiu.
                    ChukiCustomizer.RaceSwitch(false);
                    myAccessories.transform.localScale = myChuki.transform.localScale; // Change Scale to match Height.
                    myAccessories.transform.SetParent(armatureParent.transform);
                    ChukiCustomizer.RaceSwitch(true);
                    break;
                default: // Default Chuki
                    myAccessories.transform.localScale = myChuki.transform.localScale; // Change Scale to match Height.
                    myAccessories.transform.SetParent(armatureParent.transform);
                    break;
            }

            // Copy Bounding Box from BODY
            armatureReal = GameObject.Find("Accessories");
            armatureParent = GameObject.Find("Body");
            var skinnedMeshRenderer = armatureReal.GetComponent<SkinnedMeshRenderer>();
            var skinnedMeshRendererREF = armatureParent.GetComponent<SkinnedMeshRenderer>();
            skinnedMeshRenderer.localBounds = skinnedMeshRendererREF.localBounds;
            // TODO: Copy Root Bone to make local bounds proper? Not sure this is even possible in code.
            // Copy Root Bone
            //skinnedMeshRenderer.bones[0] = skinnedMeshRendererREF.bones[0];
            //skinnedMeshRendererREF.bones[0]);
            //skinnedMeshRenderer.bones[0]);

            armatureParent = GameObject.Find("EarRoot.Hair");
            armatureReal = GameObject.Find("EarRoot");
            ChukiCustomizer.ParentMachine(armatureParent, armatureReal, false, false);

            //ears need to have scale too!
            armatureParent = GameObject.Find("EarRoot.L.Hair");
            armatureReal = GameObject.Find("EarRoot.L");
            ChukiCustomizer.ParentMachine(armatureParent, armatureReal, true, false);

            //ears need to have scale too!
            armatureParent = GameObject.Find("EarRoot.R.Hair");
            armatureReal = GameObject.Find("EarRoot.R");
            ChukiCustomizer.ParentMachine(armatureParent, armatureReal, true, false);
            
            armatureParent = GameObject.Find("Glasses.Hair");
            armatureReal = GameObject.Find("Glasses");
            ChukiCustomizer.ParentMachine(armatureParent, armatureReal, false, false);

            // do not need to parent Hair bones because they are tied to the head \o/
            //But we do need to load and parent the script prefab

            // Create a new folder for the Hair Scripts
            GameObject HairGroup = new GameObject();
            HairGroup.name = "ScriptsHair";
            armatureParent = GameObject.Find("Scripts");
            HairGroup.transform.SetParent(armatureParent.transform);

            //Add Hair Script from Prefab and put it in the HairScripts Folder
            asset = AssetDatabase.LoadAssetAtPath<GameObject>($"Assets/Chuki/Scripts/HairPC/Hair{StaticValue.chukiHairOptions[hairSelected]}.prefab");
            prefab = PrefabUtility.InstantiatePrefab(asset) as GameObject;
            armatureParent = GameObject.Find("ScriptsHair");
            prefab.transform.SetParent(armatureParent.transform);

            //Assign Root Transforms for PhyBone Scripts
            // TODO: Assing collider bones for ears and neck
            VRCPhysBone VRCPB;
            VRCPhysBoneCollider VRCPBCRight, VRCPBCLeft, VRCPBCNeck;
            VRCPBCRight = GameObject.Find("EarColliderR").GetComponent(typeof(VRCPhysBoneCollider)) as VRCPhysBoneCollider;
            VRCPBCLeft = GameObject.Find("EarColliderL").GetComponent(typeof(VRCPhysBoneCollider)) as VRCPhysBoneCollider;
            VRCPBCNeck = GameObject.Find("Neck.Collider").GetComponent(typeof(VRCPhysBoneCollider)) as VRCPhysBoneCollider;

            armatureParent = GameObject.Find("Hair.Fat.Script");
            if (armatureParent)
            {
                VRCPB = armatureParent.GetComponent(typeof(VRCPhysBone)) as VRCPhysBone;
                armatureReal = GameObject.Find("Hair.Fat.Root");
                VRCPB.rootTransform = armatureReal.transform;
                if (VRCPB.colliders.Count == 2)
                {
                    VRCPB.colliders[0] = VRCPBCRight;
                    VRCPB.colliders[1] = VRCPBCLeft;
                }
            }

            armatureParent = GameObject.Find("Hair.Slim.Script");
            if (armatureParent)
            {
                VRCPB = armatureParent.GetComponent(typeof(VRCPhysBone)) as VRCPhysBone;
                armatureReal = GameObject.Find("Hair.Slim.Root");
                VRCPB.rootTransform = armatureReal.transform;
                if (VRCPB.colliders.Count == 2)
                {
                    VRCPB.colliders[0] = VRCPBCRight;
                    VRCPB.colliders[1] = VRCPBCLeft;
                }
            }

            armatureParent = GameObject.Find("Hair.Neck.Script");
            if (armatureParent)
            {
                VRCPB = armatureParent.GetComponent(typeof(VRCPhysBone)) as VRCPhysBone;
                armatureReal = GameObject.Find("Hair.Neck.Root");
                VRCPB.rootTransform = armatureReal.transform;
                if (VRCPB.colliders.Count == 1)
                {
                    VRCPB.colliders[0] = VRCPBCNeck;
                }
            }

            if (GameObject.Find("Hair.Ponytail.Script"))
            {
                GameObject.Find("Hair.Ponytail.Script").transform.SetParent(GameObject.Find("ScriptsHair").transform);
            }

            //TODO Figure out why this script is causing a critical failure pt2
            // Reapply Material
            Material test;
            
            if (myChukiName == null) { myChukiName = "tmp"; }
            
            armatureReal = GameObject.Find("Accessories");
            test = AssetDatabase.LoadAssetAtPath($"Assets/Chuki/MyChukis/{EditorSceneManager.GetActiveScene().name}/Body-Poi8.1_Toon_Opaque.mat", typeof(Material)) as Material;
            armatureReal.GetComponent<Renderer>().sharedMaterial = test;
            //
            // Reapply Blendshapes for Extras, fluff, glasses.
            armatureReal.GetComponent<SkinnedMeshRenderer>().SetBlendShapeWeight(StaticValue.DictAccessories["Glasses_Ty_HIDE"], Glasses_Ty_HIDE);
            armatureReal.GetComponent<SkinnedMeshRenderer>().SetBlendShapeWeight(StaticValue.DictAccessories["Glasses_Axtii_HIDE"], Glasses_Axtii_HIDE);
            armatureReal.GetComponent<SkinnedMeshRenderer>().SetBlendShapeWeight(StaticValue.DictAccessories["Ty_Lense"], Ty_Lense);
            armatureReal.GetComponent<SkinnedMeshRenderer>().SetBlendShapeWeight(StaticValue.DictAccessories["Ty_Lense_Axtii"], Ty_Lense_Axtii);
            armatureReal.GetComponent<SkinnedMeshRenderer>().SetBlendShapeWeight(StaticValue.DictAccessories["Lense_HIDE"], Lense_HIDE);

            GameObject obj = GameObject.Find("Accessories");
            ChukiHelper.DoAction.SetBlendShapeSize(obj, "GaugeR_HIDE", ChukiInstaller.chukiAccessoriesArr[0]);
            ChukiHelper.DoAction.SetBlendShapeSize(obj, "GaugeL_HIDE", ChukiInstaller.chukiAccessoriesArr[1]);
            ChukiHelper.DoAction.SetBlendShapeSize(obj, "EarTufts_HIDE", ChukiInstaller.chukiAccessoriesArr[3]);

            ChukiBlendShape.ChangeSingle(StaticValue.DictAccessories["EarTufts Position"], ChukiInstaller.earFluffPos, "Accessories");
        }
        public static void PonytailSwap(int ponytailSelected) // Swap ponytails.
        {
            GameObject asset;
            if (ponytailSelected == 0) // None selected, remove Ponytail
            {
                mySource = GameObject.Find("My Chuki/Extra/Ponytail");
                if (mySource)
                {
                    DestroyImmediate(mySource, false);
                    mySource = GameObject.Find("Hair.Ponytail.Script");
                    DestroyImmediate(mySource, false);
                }
            } else {
                mySource = GameObject.Find("Ponytail");
                if (!mySource) { // no Ponytail found, add a new one.
                    myAccessories = GameObject.Find("Crystals");
                    Instantiate(myAccessories);
                    myDestination = GameObject.Find("Crystals(Clone)");
                    myDestination.name = "Ponytail";
                    myAccessories = GameObject.Find("Extra");

                    myDestination.transform.SetParent(myAccessories.transform);
                    mySource = myDestination;

                    // Add Ponytail Scripts if missing
                    asset = AssetDatabase.LoadAssetAtPath<GameObject>($"Assets/Chuki/Scripts/HairPC/Hair.Ponytail.Script.prefab");
                    myAccessories = PrefabUtility.InstantiatePrefab(asset) as GameObject;
                    myDestination = GameObject.Find("ScriptsHair");
                    myAccessories.transform.SetParent(myDestination.transform);
                }

                // Create Prefab Ponytail to copy from
                asset = AssetDatabase.LoadAssetAtPath<GameObject>($"Assets/Chuki/SourceFiles/Prefabs/Ponytail/{StaticValue.BraidOptions[ponytailSelected]}.prefab");
                myAccessories = PrefabUtility.InstantiatePrefab(asset) as GameObject;
                tmpName = StaticValue.BraidOptions[ponytailSelected] + "MESH";
                myAccessories = GameObject.Find(tmpName);
                mySource.GetComponent<SkinnedMeshRenderer>().sharedMesh = myAccessories.GetComponent<SkinnedMeshRenderer>().sharedMesh;
                // Destroy Prefab Ponytail
                myAccessories = GameObject.Find(StaticValue.BraidOptions[ponytailSelected]);
                DestroyImmediate(myAccessories, false);

                // Copy Material from Body
                myChuki = GameObject.Find("My Chuki/Body");
                materialSource = myChuki.GetComponent<Renderer>().sharedMaterial;
                mySource.GetComponent<Renderer>().sharedMaterial = materialSource;

                myAccessories = GameObject.Find("Hair.Ponytail.Script");
                mySource = GameObject.Find("Hair.Braid.1"); // BONE
                VRCPB = myAccessories.GetComponent(typeof(VRCPhysBone)) as VRCPhysBone;
                VRCPB.rootTransform = mySource.transform;
                VRCPBC = GameObject.Find("Tail.2.Collider").GetComponent(typeof(VRCPhysBoneCollider)) as VRCPhysBoneCollider; // BONE
                VRCPB.colliders[0] = VRCPBC;
                VRCPBC = GameObject.Find("Tail.3.Collider").GetComponent(typeof(VRCPhysBoneCollider)) as VRCPhysBoneCollider; // BONE
                VRCPB.colliders[1] = VRCPBC;
                VRCPBC = GameObject.Find("Tail.4.Collider").GetComponent(typeof(VRCPhysBoneCollider)) as VRCPhysBoneCollider; // BONE
                VRCPB.colliders[2] = VRCPBC;
                VRCPBC = GameObject.Find("FloorPlane").GetComponent(typeof(VRCPhysBoneCollider)) as VRCPhysBoneCollider; // BONE
                VRCPB.colliders[3] = VRCPBC;
                VRCPBC = GameObject.Find("Belly.Scripts").GetComponent(typeof(VRCPhysBoneCollider)) as VRCPhysBoneCollider; // BONE
                VRCPB.colliders[4] = VRCPBC;
                VRCPBC = GameObject.Find("Chest.Collider").GetComponent(typeof(VRCPhysBoneCollider)) as VRCPhysBoneCollider; // BONE
                VRCPB.colliders[5] = VRCPBC;
            }
        }
        public static void ParentMachine(GameObject armatureParent, GameObject armatureReal, bool AddScaleConstraint, bool isHair)
            // Creates a Parent Constraint on ArmatureParent and adds ArmatureReal as the Source
        {
            if (armatureParent.GetComponent(typeof(ParentConstraint)) == null)
            {
                pc = armatureParent.AddComponent(typeof(ParentConstraint)) as ParentConstraint;
            }
            
            
            constraintSource.sourceTransform = armatureReal.transform;
            constraintSource.weight = 1;
            pc.AddSource(constraintSource);

            //Do not lock if this is hair? 
            if (isHair == false) { pc.locked = true; }

            pc.constraintActive = true;
            if (AddScaleConstraint)
            {
                sc = armatureParent.AddComponent(typeof(ScaleConstraint)) as ScaleConstraint;
                sc.AddSource(constraintSource);
                sc.constraintActive = true;
                sc.locked = true;
            }
        }
        public static void ScaleMachine(GameObject armatureParent, GameObject armatureReal)
        // Creates a Scale Constraint on ArmatureParent and adds ArmatureReal as the Source
        {
            sc = armatureParent.AddComponent(typeof(ScaleConstraint)) as ScaleConstraint;
            constraintSource.sourceTransform = armatureReal.transform;
            constraintSource.weight = 1;
            sc.AddSource(constraintSource);
            sc.constraintActive = true;
            sc.locked = true;
        }
        public static void ChangeAvatarConfig(bool raceAvatar, bool MMDModeAvatar, bool twinkAvatar)
        {
            GameObject myChukiAvatar = GameObject.Find("My Chuki");

            string raceString = (raceAvatar) ? "Qiu" : "Aes";
            string MMDModeString = (MMDModeAvatar) ? "MMD" : "";
            string twinkAvatarString = (twinkAvatar) ? "Twink" : "";

            var tmpAvatar = AssetDatabase.LoadAssetAtPath<Avatar>($"Assets/Chuki/SourceFiles/Model/AvatarConfigs/{raceString}{MMDModeString}{twinkAvatarString}.asset");
            myChukiAvatar.GetComponent<Animator>().avatar = tmpAvatar;
        }
        public static void RaceSwitch(bool chukiRaceSelected) // Method to change armature and bones to perform a the race switch.
        {
            // Initialize Variables for this method
            GameObject armatureBone;
            Vector3 scaleChange, positionChange, scaleTailChange, scaleHeadChange;

            // List of bones to change for the race switch
            string[] raceArmatureList = new string[]
            {
            "My Chuki/Armature","Leg.L","Leg.R","TailRoot","Head",
            };

            // Determine what race was selected and assign appropriate measurements to variables
            if (chukiRaceSelected == true) // Qiu Measurements
            {
                positionChange = new Vector3(0f, -0.06f, 0f);
                scaleChange = new Vector3(0.8f, 0.8f, 0.8f);
                scaleTailChange = new Vector3(1.3f, 1.3f, 1.3f);
                scaleHeadChange = new Vector3(1.1f, 1.1f, 1.1f);
            }
            else // Aes Measurements
            {
                positionChange = new Vector3(0f, 0f, 0f);
                scaleChange = new Vector3(1.0f, 1.0f, 1.0f);
                scaleTailChange = scaleChange;
                scaleHeadChange = scaleChange;
            }

            // Apply measurements to bones in list
            foreach (string currentBone in raceArmatureList)
            {
                // Find bone in the hirearchy
                armatureBone = GameObject.Find(currentBone);
                switch (currentBone)
                {
                    case "Armature":
                        armatureBone.transform.localScale = scaleChange;
                        armatureBone.transform.position = positionChange; // this only VISUALLY moves the chuki down for the installer.
                        break;
                    case "TailRoot":
                        armatureBone.transform.localScale = scaleTailChange;
                        break;
                    case "Head":
                        armatureBone.transform.localScale = scaleHeadChange;
                        break;
                    default:
                        armatureBone.transform.localScale = scaleChange;
                        break;
                }
            }
            // Apply new Animator Avatar Configuration, this solves the Qiu floating off the floor problem.
            //Check for MMD and Twink Frame in Avatar Configuration.
            //bool MMDBool = false, frameBool = false;
            //if (GameObject.Find("My Chuki").GetComponent<Animator>().avatar.ToString().Contains("MMD"))
            //{ MMDBool = true; }
            //if (GameObject.Find("My Chuki").GetComponent<Animator>().avatar.ToString().Contains("Twink"))
            //{ frameBool = true; }
            //
            //ChukiCustomizer.ChangeAvatarConfig(chukiRaceSelected, MMDBool, frameBool);
        }
        public static void BodyFrameSwitch(bool twink) // Method to swap out prefabs
        {
            string twinkString = "";
            string AdditiveController = "Additive";
            if (twink == true)
            {
                twinkString = "Twink";
                AdditiveController = "AdditiveTwink";
            }

            var asset = AssetDatabase.LoadAssetAtPath<GameObject>($"Assets/Chuki/SourceFiles/Prefabs/Base{twinkString}.prefab");
            var prefab = PrefabUtility.InstantiatePrefab(asset) as GameObject;
            prefab.name = "Source";

            //GameObject.Find(twinkString);
            GameObject mySource, mySourceBone, myChukiBone;
            string myChukiBoneString, mySourceBoneString;

            // Copy Body Mesh
            mySource = GameObject.Find("Source/Body");
            myChuki = GameObject.Find("My Chuki/Body");
            myChuki.GetComponent<SkinnedMeshRenderer>().sharedMesh = mySource.GetComponent<SkinnedMeshRenderer>().sharedMesh;

            // Match Heights
            mySource = GameObject.Find("Source");
            myChuki = GameObject.Find("My Chuki");
            mySource.transform.localScale = myChuki.transform.localScale;

            // Copy Crystal Mesh
            mySource = GameObject.Find("Source/Extra/Crystals");
            myChuki = GameObject.Find("My Chuki/Extra/Crystals");
            myChuki.GetComponent<SkinnedMeshRenderer>().sharedMesh = mySource.GetComponent<SkinnedMeshRenderer>().sharedMesh;

            // Move bones around, just for the Scene View and not needed in game.
            foreach (string bone in StaticValue.twinkBones)
            {

                myChukiBoneString = "My Chuki/" + bone;
                myChukiBone = GameObject.Find(myChukiBoneString);
                
                mySourceBoneString = "Source/" + bone;
                mySourceBone = GameObject.Find(mySourceBoneString);

                myChukiBone.transform.localPosition = mySourceBone.transform.localPosition;
                myChukiBone.transform.localRotation = mySourceBone.transform.localRotation;
            }
            // Destroy Source Object
            mySource = GameObject.Find("Source");
            DestroyImmediate(mySource, false);

            // Change Arm Fix Layer
            var sdesc = new SerializedObject(GameObject.Find("My Chuki").GetComponent<VRC_AvatarDescriptor>());
            var SAdditive = sdesc.FindProperty("baseAnimationLayers");
            SAdditive.GetArrayElementAtIndex(1).FindPropertyRelative("animatorController").objectReferenceValue = AssetDatabase.LoadAssetAtPath<RuntimeAnimatorController>($"Assets/Chuki/Movement/Controllers/{AdditiveController}.controller");

            sdesc.ApplyModifiedProperties();

            //mySource = GameObject.Find("My Chuki");
            //VRC_AvatarDescriptor desc = mySource.GetComponent<VRC_AvatarDescriptor>();
            //desc.baseAnimationLayers[1].animatorController = AssetDatabase.LoadAssetAtPath<RuntimeAnimatorController>($"Assets/Chuki/Movement/Controllers/{AdditiveController}.controller");
        }
        public static void BreastSwitch(bool SlimFrame, bool BreastsEnabled)
        {
            string twink = "";
            if (SlimFrame == true)
            { 
                twink = "Twink";
            }
            string breast = "";

            // Assign Breast label for clothes AND change Crystal shape for Breasts.
            GameObject baseID = GameObject.Find("KWood");
            GameObject BaseIDName = baseID.transform.GetChild(0).gameObject;
            if (BreastsEnabled)
            {
                BaseIDName.name = "BaseID: BaseBreast";
                ChukiBlendShape.ChangeSingle(StaticValue.DictCrystal["Chest Center Breast 0"], 100f, "Crystals"); // breasts turned on
                breast = "Breast";
            }
            else
            {
                BaseIDName.name = "BaseID: Base";
                ChukiBlendShape.ChangeSingle(StaticValue.DictCrystal["Chest Center Breast 0"], 0f, "Crystals"); // breasts turned off
                breast = "";
            }

            GameObject asset = AssetDatabase.LoadAssetAtPath<GameObject>($"Assets/Chuki/SourceFiles/Prefabs/Base{twink}{breast}.prefab");
            GameObject prefab = PrefabUtility.InstantiatePrefab(asset) as GameObject;
            prefab.name = "Source";

            mySource = GameObject.Find("Source/Body");
            myChuki = GameObject.Find("My Chuki/Body");
            myChuki.GetComponent<SkinnedMeshRenderer>().sharedMesh = mySource.GetComponent<SkinnedMeshRenderer>().sharedMesh;

            // Destroy Source Object
            mySource = GameObject.Find("Source");
            DestroyImmediate(mySource, false);
        }
    }
    public class ChukiBlendShape : MonoBehaviour // Blendshape modifications
    {
        //assign variable for searching CrystalMesh
        public static GameObject BlendshapeObject;

        SkinnedMeshRenderer skinnedMeshRenderer;
        static float blendMax = 100f;
        static float blendMin = 0f;

        public static void Toggle(int BlendshapeSelected, bool Status, string GameObjectToFind)
            //Method to Toggle a Blendshape to Min or Max
        {
            /* Note: this search sticks to the first found Chuki
                To make it affect a specific Chuki, make sure the one to affect is the only one visible on Scene. */
            GameObject myChukiBody = GameObject.Find("Body");
            BlendshapeObject = GameObject.Find(GameObjectToFind);

            if (BlendshapeObject)
            {
                var skinnedMeshRenderer = BlendshapeObject.GetComponent<SkinnedMeshRenderer>();
                skinnedMeshRenderer.SetBlendShapeWeight(BlendshapeSelected, Status == true ? blendMin : blendMax);
                if (GameObjectToFind == "Crystals")
                {
                    Mesh mesh = skinnedMeshRenderer.sharedMesh;
                    string BlendShapeName = mesh.GetBlendShapeName(BlendshapeSelected);
                    BlendShapeName = BlendShapeName.Replace("_HIDE", "");
                    ChukiHelper.DoAction.UpdateBlendShapeSizes(BlendshapeObject, BlendShapeName, Status, myChukiBody);
                }
            }
            else
            {
                Debug.LogError($"Chuki Avatar Installer: Failed to find the {BlendshapeObject} GameObject in the Hirearchy, probably because there is no Chuki in Scene or Chuki is hidden in Scene.");
            }
        }
        public static void ChangeSingle(int BlendshapeSelected, float FloatValue, string GameObjectToFind)
            //Method to change a single Blendshape on a float value.
        {
            /*  Note: it sticks on to the last affected Chuki
                To make it affect a specific Chuki, make sure the one to affect is the only one visible on Scene. */
            BlendshapeObject = GameObject.Find(GameObjectToFind);

            if (BlendshapeObject)
            {
                var skinnedMeshRenderer = BlendshapeObject.GetComponent<SkinnedMeshRenderer>();

                skinnedMeshRenderer.SetBlendShapeWeight(BlendshapeSelected, FloatValue);
            }
            else
            {
                Debug.LogError($"Chuki Avatar Installer: Failed to find the {BlendshapeObject} GameObject in the Hirearchy, probably because there is no Chuki in Scene or Chuki is hidden in Scene.");
            }
        }
        public static void ChangeCombo(int BlendshapeSelected, float FloatValue, string GameObjectToFind)
            //Method to change a small/large Blendshape combo on a float value
        {
            /*  Note: it sticks on to the last affected Chuki
                To make it affect a specific Chuki, make sure the one to affect is the only one visible on Scene. */
            BlendshapeObject = GameObject.Find(GameObjectToFind);

            if (BlendshapeObject)
            {
                var skinnedMeshRenderer = BlendshapeObject.GetComponent<SkinnedMeshRenderer>();
                var chukiBlendshapeSelectedSmall = BlendshapeSelected + 1;

                if (FloatValue > 0 && FloatValue < 50)
                {
                    var chukiBlendshapeFloatValueFix = 100 - (FloatValue * 2);
                    skinnedMeshRenderer.SetBlendShapeWeight(BlendshapeSelected, 0f);
                    skinnedMeshRenderer.SetBlendShapeWeight(chukiBlendshapeSelectedSmall, chukiBlendshapeFloatValueFix);
                }
                else if (FloatValue > 49 && FloatValue < 100)
                {
                    var chukiBlendshapeFloatValueFix = (FloatValue - 50) * 2;
                    skinnedMeshRenderer.SetBlendShapeWeight(BlendshapeSelected, chukiBlendshapeFloatValueFix);
                    skinnedMeshRenderer.SetBlendShapeWeight(chukiBlendshapeSelectedSmall, 0f);
                }
                else if (FloatValue == 100)
                {
                    skinnedMeshRenderer.SetBlendShapeWeight(BlendshapeSelected, 100f);
                    skinnedMeshRenderer.SetBlendShapeWeight(chukiBlendshapeSelectedSmall, 0f);
                }
                else
                {
                    skinnedMeshRenderer.SetBlendShapeWeight(BlendshapeSelected, 0f);
                    skinnedMeshRenderer.SetBlendShapeWeight(chukiBlendshapeSelectedSmall, 100f);
                }
            }
            else
            {
                Debug.LogError($"Chuki Avatar Installer: Failed to find the {BlendshapeObject} GameObject in the Hirearchy, probably because there is no Chuki in Scene or Chuki is hidden in Scene.");
            }
        }
    }
    public class MatScript : MonoBehaviour
    {
        float chukiHeightFloat;

        public static GameObject rootChukiBody, myAccessories;
        public static Vector3 scaleChange2;

        public static void ChangeUDIM(string UDIMChoice, bool isAlive)
        {
            rootChukiBody = GameObject.Find("Body");
            myAccessories = GameObject.Find("Accessories");
            if (rootChukiBody && myAccessories)
            {
                var thisRend = rootChukiBody.GetComponent<Renderer>();
                var rendAccessories = myAccessories.GetComponent<Renderer>();
                switch (UDIMChoice)
                {
                    case "GaugeHoleL":
                        thisRend.sharedMaterial.SetFloat("_UDIMDiscardRow2_0", isAlive ? 1 : 0); // Left ear Gauge ear hole
                        break;
                    case "GaugeLeft":
                        rendAccessories.sharedMaterial.SetFloat("_UDIMDiscardRow2_3", isAlive ? 0 : 1); // Left ear gauge earring
                        break;
                    case "GaugeHoleR":
                        thisRend.sharedMaterial.SetFloat("_UDIMDiscardRow3_0", isAlive ? 1 : 0); // Right ear gauge ear hole
                        break;
                    case "GaugeRight":
                        rendAccessories.sharedMaterial.SetFloat("_UDIMDiscardRow3_3", isAlive ? 0: 1); // Right ear gauge earring
                        break;
                    case "GlassesNone":
                        rendAccessories.sharedMaterial.SetFloat("_UDIMDiscardRow2_2", 1);    // Axtii Glasses
                        rendAccessories.sharedMaterial.SetFloat("_UDIMDiscardRow1_2", 1);    // Glasses
                        break;
                    case "GlassesTy":
                        rendAccessories.sharedMaterial.SetFloat("_UDIMDiscardRow2_2", 1);    // Axtii Glasses
                        rendAccessories.sharedMaterial.SetFloat("_UDIMDiscardRow1_2", 0);    // Glasses
                        break;
                    case "GlassesAxtii":
                        rendAccessories.sharedMaterial.SetFloat("_UDIMDiscardRow2_2", 0);    // Axtii Glasses
                        rendAccessories.sharedMaterial.SetFloat("_UDIMDiscardRow1_2", 1);    // Glasses
                        break;
                    case "WristbandNone":
                        thisRend.sharedMaterial.SetFloat("_UDIMDiscardRow1_3", 1);    // Wristband
                        break;
                    case "Wristband":
                        thisRend.sharedMaterial.SetFloat("_UDIMDiscardRow1_3", 0);    // Wristband
                        break;
                    case "fluffShoulder":
                        thisRend.sharedMaterial.SetFloat("_UDIMDiscardRow2_1", isAlive ? 0 : 1); // Shoulder Fluffs
                        break;
                    case "fluffEar":
                        rendAccessories.sharedMaterial.SetFloat("_UDIMDiscardRow1_0", isAlive ? 0: 1); // Ear Fluffs
                        break;
                }
            }
        }
    }
    public static class StaticValue
    {
        public static readonly string chukiVer = "1.4.1";
        public static readonly string updateVer = "2023.6.05";

        public static readonly Dictionary<string, int> DictMenuOptions = new Dictionary<string, int>()
        {
            { "Race / Gender", 1}, //DrawChukiRaces();
            {"Hair", 2},         // DrawHairstyles();
            {"Leycrystals", 3},  // DrawCrystals();
            {"Crystal Colors", 4},  // DrawCrystalsColors();
            {"Body Material", 5}, //DrawBodyMaterial();
            {"Height", 6},       // DrawHeight();
            {"Extras", 7},       // DrawExtras();
            {"Body Mods", 8},    // DrawChukiBodyMods();
            {"Head Mods", 9},    // DrawChukiHeadMods();
            {"Face Mods", 10},    // DrawChukiFaceMods();
            {"Fuzz Options", 11}, // DrawChukiFluffPanel();
            {"Expressions", 12},  // DrawExpressionSets();
            {"Ear Flop Settings", 13}, // DrawEarFlop();
            {"Valve Index?", 14}, // DrawValveIndex();
            {"MMD", 15}, // DrawMMD();
            {"Info & Help", 16},   // DrawCredits();
        };
        public static readonly Dictionary<string, int> DictCrystal = new Dictionary<string, int>()
        {
            //Crystal Mesh
            {"Horn Left", 0},
            {"Horn Right", 1},
            {"Horn Center", 2},
            {"Neck Left", 3},
            {"Neck Right", 4},
            {"Chest", 5},
            {"Chest Left", 6},
            {"Chest Right", 7},
            {"Back Left (Wislow)", 8},
            {"Back Right (Wislow)", 9},
            {"Arm Left", 10},
            {"Arm Right", 11},
            {"Wrist Left", 12},
            {"Wrist Right", 13},
            {"Hip Left", 14},
            {"Hip Right", 15},
            {"Thigh Left", 16},
            {"Thigh Right", 17},
            {"Tail Top", 18},
            {"Tail Bottom", 19},
            {"Tail Ring", 20},
            {"Ankle Left", 21},
            {"Ankle Right", 22},
            {"Garbanzos_HIDE", 23},

            // === SIZES ===, 24
            {"AnkleL", 25},
            {"AnkleS", 26},
            {"Ankle Everly", 27},
            {"Arm Size", 28},
            {"Arm Everly", 29},
            {"Chest Center Large", 30},
            {"Chest Center Breast 0", 31},
            {"Chest Center Breast 1", 32},
            {"Chest Large", 33},
            {"Chest Arm Everly", 34},
            {"Chest WaistL", 35},
            {"Chest WaistS", 36},
            {"Hip HipL", 37},
            {"Hip HipS", 38},
            {"LegL", 39},
            {"WaistL", 40},
            {"WaistS", 41},
            {"HipEverly", 42},
            {"Neck Arm Size", 43},
            {"Neck Everly", 44},
            {"TailBEverly", 45},
            {"TailTEverly", 46},
            {"ThighLegL", 47},
            {"ThighLegS", 48},
            {"ThighEverly", 49},
            {"Wrist Size", 50},
            {"Wrist Everly", 51},
            {"Crotch", 52},
            // === ACCESSORIES === 53
            {"GaugeL_HIDE", 54},
            {"GaugeR_HIDE", 55},
            {"HornSizeL", 56},
            {"HornSizeR", 57},
            {"HornSizeC", 58},
        };
        public static readonly Dictionary<string, int> DictBody = new Dictionary<string, int>()
        {
            //Body Mesh
            // === BODY MOD === , 18
            {"Arm_Size", 19},
            {"Arm_Slimmer", 20},
            {"Chest_Size", 21},
            {"Hip_Large", 22},
            {"Hip_Small", 23},
            {"Leg_Large", 24},
            {"Leg_Small", 25},
            {"Nose_Size", 26},
            {"Snout_Large", 27},
            {"Snout_Small", 28},
            {"Waist_Large", 29},
            {"Waist_Small", 30},
            {"Breast_Size_Large", 31},
            {"Breast_Size_Small", 32},
            {"EyebrowBridge", 33},
            {"Everly_LowerBody", 34},
            {"Everly_Muzzle", 35},
            {"Brad_Snout", 36},
            {"Brad_Chin", 37},
            {"Brad_Cheeks", 38},
            {"Eyelashes", 39},
            {"Pecs", 40},
            {"Crotch", 41},
            // === ACCESSORIES ===, 42
            {"Gauge Right", 43},
            {"Gauge Left", 44},
            {"Floating Whiskers", 45},
            {"Fuzz_Chin", 46},
            {"Fuzz_Cheeks", 47},
            {"Fuzz_Elbows", 48},
            {"Fuzz_Shoulders", 49},
            {"Fuzz_Knees", 50},
            {"Fuzz_Chest", 51},
            {"Fuzz_Shins", 52},
            {"Shoulder Fluffs", 53},
            {"Wristband HIDE", 54},
            {"Wristband Spiked", 55},
            {"Wristband Spike 2", 56},
            {"Wristband Smooth", 57},
            {"Garbanzos_HIDE", 58},
        };
        public static readonly Dictionary<string, int> DictAccessories = new Dictionary<string, int>()
        {
            //Accessories Mesh
            // === BODY MOD === , 0
            {"Eyebrow Bridge", 1},
            // === ACCESSSORIES ===, 2
            {"GaugeR_HIDE", 3},
            {"GaugeL_HIDE", 4},
          //{"Glasses_Ty_neutral", 5},
          //{"Glasses_Ty_eyes_angry", 6},
          //{"Glasses_Ty_eyes_sad", 7},
          //{"Glasses_Ty_eyes_narrow", 8},
            {"Glasses_Ty_HIDE", 9},
            {"Glasses_Axtii_Lense_Ty", 10},
            {"Glasses_Axtii_HIDE", 11},
            {"EarTufts Position", 12},
            {"EarTufts_HIDE", 13},
            {"Ty_Lense", 14 },
            {"Ty_Lense_EyebrowBridge", 15},
          //{"Ty_Lense_Eyes_Angry", 16},
          //{"Ty_Lense_Eyes_Sad", 17},
          //{"Ty_Lense_Eyes_narrow", 18},
            {"Ty_Lense_Axtii", 19},
            {"Lense_HIDE", 20},
          //{"Lense_Axtii_Shine_Move", 21},
          //{"Lense_Axtii_Shine_Fill", 22},
          //{"Lense_Ty_Shine_Move", 23},
          //{"Lense_Ty_Shine_Fill", 24},
            {"Braid_Chain", 25},
            {"Braid_Bow_HIDE", 26},
        };
        public static readonly Dictionary<string, int> DictHairOptions = new Dictionary<string, int>()
        {
            {"None", 0},
            {"Classic", 1},
            {"Amica", 2},
            {"Brad", 3},
            {"Fluff", 4},
            {"Mane", 5},
            {"Mohawk", 6},
            {"Overnight", 7},
            {"Paradise", 8},
            {"Peppermint", 9},
            {"Rai", 10},
            {"Roux", 11},
            {"Royals", 12},
            {"Trouble", 13},
            {"TySway", 14},
            {"Vice", 15},
            {"Wis", 16},
            {"Aerix", 17},
        };
        public static readonly string[] chukiHairOptions = new string[] {
        "None",
        "Classic",
        "Amica",
        "Brad",
        "Fluff",
        "Mane",
        "Mohawk",
        "Overnight",
        "Paradise",
        "Peppermint",
        "Rai",
        "Roux",
        "Royals",
        "Trouble",
        "TySway",
        "Vice",
        "Wis",
        "Aerix",
    };
        public static readonly string[] chukiHairNames = new string[]
        {
        "None",
        "Classic",
        "Amica",
        "Brad",
        "Fluff",
        "Mane",
        "Mohawk",
        "Overnight",
        "Paradise",
        "Peppermint",
        "Rai Woosh",
        "Roux",
        "Royals",
        "Trouble for Paradise",
        "Ty Sway",
        "Vice",
        "Wis Mullet",
        "Aerix Mane",
        };
        public static readonly string[] BraidOptions = new string[]
        {
            "None",
            "Braid",
            "BraidBow",
        };
        public static readonly string[] twinkBones = new string[]
        {
            "Armature/Hips/UpLeg.L",
            "Armature/Hips/UpLeg.L/Leg.L",
            "Armature/Hips/UpLeg.L/Leg.L/Foot.L",
            "Armature/Hips/UpLeg.L/Leg.L/Foot.L/ToeBase.L",
            "Armature/Hips/UpLeg.L/Leg.L/Foot.L/ToeBase.L/Toe.Big.Proximal.L",
            "Armature/Hips/UpLeg.L/Leg.L/Foot.L/ToeBase.L/Toe.Big.Proximal.L/Toe.Big.Middle.L",
            "Armature/Hips/UpLeg.L/Leg.L/Foot.L/ToeBase.L/Toe.Big.Proximal.L/Toe.Big.Middle.L/Toe.Big.Distal.L",
            "Armature/Hips/UpLeg.L/Leg.L/Foot.L/ToeBase.L/Toe.Fourth.Proximal.L",
            "Armature/Hips/UpLeg.L/Leg.L/Foot.L/ToeBase.L/Toe.Fourth.Proximal.L/Toe.Fourth.Middle.L",
            "Armature/Hips/UpLeg.L/Leg.L/Foot.L/ToeBase.L/Toe.Fourth.Proximal.L/Toe.Fourth.Middle.L/Toe.Fourth.Distal.L",
            "Armature/Hips/UpLeg.L/Leg.L/Foot.L/ToeBase.L/Toe.Second.Proximal.L",
            "Armature/Hips/UpLeg.L/Leg.L/Foot.L/ToeBase.L/Toe.Second.Proximal.L/Toe.Second.Middle.L",
            "Armature/Hips/UpLeg.L/Leg.L/Foot.L/ToeBase.L/Toe.Second.Proximal.L/Toe.Second.Middle.L/Toe.Second.Distal.L",
            "Armature/Hips/UpLeg.L/Leg.L/Foot.L/ToeBase.L/Toe.Third.Proximal.L",
            "Armature/Hips/UpLeg.L/Leg.L/Foot.L/ToeBase.L/Toe.Third.Proximal.L/Toe.Third.Middle.L",
            "Armature/Hips/UpLeg.L/Leg.L/Foot.L/ToeBase.L/Toe.Third.Proximal.L/Toe.Third.Middle.L/Toe.Third.Distal.L",
            "Armature/Hips/UpLeg.R",
            "Armature/Hips/UpLeg.R/Leg.R",
            "Armature/Hips/UpLeg.R/Leg.R/Foot.R",
            "Armature/Hips/UpLeg.R/Leg.R/Foot.R/ToeBase.R",
            "Armature/Hips/UpLeg.R/Leg.R/Foot.R/ToeBase.R/Toe.Big.Proximal.R",
            "Armature/Hips/UpLeg.R/Leg.R/Foot.R/ToeBase.R/Toe.Big.Proximal.R/Toe.Big.Middle.R",
            "Armature/Hips/UpLeg.R/Leg.R/Foot.R/ToeBase.R/Toe.Big.Proximal.R/Toe.Big.Middle.R/Toe.Big.Distal.R",
            "Armature/Hips/UpLeg.R/Leg.R/Foot.R/ToeBase.R/Toe.Fourth.Proximal.R",
            "Armature/Hips/UpLeg.R/Leg.R/Foot.R/ToeBase.R/Toe.Fourth.Proximal.R/Toe.Fourth.Middle.R",
            "Armature/Hips/UpLeg.R/Leg.R/Foot.R/ToeBase.R/Toe.Fourth.Proximal.R/Toe.Fourth.Middle.R/Toe.Fourth.Distal.R",
            "Armature/Hips/UpLeg.R/Leg.R/Foot.R/ToeBase.R/Toe.Second.Proximal.R",
            "Armature/Hips/UpLeg.R/Leg.R/Foot.R/ToeBase.R/Toe.Second.Proximal.R/Toe.Second.Middle.R",
            "Armature/Hips/UpLeg.R/Leg.R/Foot.R/ToeBase.R/Toe.Second.Proximal.R/Toe.Second.Middle.R/Toe.Second.Distal.R",
            "Armature/Hips/UpLeg.R/Leg.R/Foot.R/ToeBase.R/Toe.Third.Proximal.R",
            "Armature/Hips/UpLeg.R/Leg.R/Foot.R/ToeBase.R/Toe.Third.Proximal.R/Toe.Third.Middle.R",
            "Armature/Hips/UpLeg.R/Leg.R/Foot.R/ToeBase.R/Toe.Third.Proximal.R/Toe.Third.Middle.R/Toe.Third.Distal.R",
            "Armature/Hips/Spine/Chest/UpperChest/Shoulder.L",
            "Armature/Hips/Spine/Chest/UpperChest/Shoulder.L/Arm.L",
            "Armature/Hips/Spine/Chest/UpperChest/Shoulder.L/Arm.L/ForeArm.L",
            "Armature/Hips/Spine/Chest/UpperChest/Shoulder.L/Arm.L/ForeArm.L/Hand.L",
            "Armature/Hips/Spine/Chest/UpperChest/Shoulder.R",
            "Armature/Hips/Spine/Chest/UpperChest/Shoulder.R/Arm.R",
            "Armature/Hips/Spine/Chest/UpperChest/Shoulder.R/Arm.R/ForeArm.R",
            "Armature/Hips/Spine/Chest/UpperChest/Shoulder.R/Arm.R/ForeArm.R/Hand.R",
        };
        // HEAD
        // Whisker Defaults
        public static readonly float whisker1RPosXMin = 0.1155103f;
        public static readonly float whisker1RPosXMax = 0.0437f;
        public static readonly float whisker1RPosYMin = -0.002827517f;
        public static readonly float whisker1RPosYMax = 0.1081f;
        public static readonly float whisker1RPosZMin = -0.0128884f;
        public static readonly float whisker1RPosZMax = -0.0004f;
        public static readonly float whisker2RPosXMin = 0.1045843f;
        public static readonly float whisker2RPosXMax = 0.0408f;
        public static readonly float whisker2RPosYMin = 0.004336017f;
        public static readonly float whisker2RPosYMax = 0.0979f;
        public static readonly float whisker2RPosZMin = 0.01877192f;
        public static readonly float whisker2RPosZMax = 0.0131f;

        //EarFlop floats
        public static readonly float earFlopXMin = 21.436f;
        public static readonly float earFlopXMax = 59.444f;
        public static readonly float earFlopYMin = 107.2f;
        public static readonly float earFlopYMax = 200.4f;
        public static readonly float earFlopZMin = 50.028f;
        public static readonly float earFlopZMax = 99.753f;

        public static List<ChukiTailSection> armatureTailSections;
        public static void SetupTail(bool curl)
        {
            armatureTailSections = new List<ChukiTailSection>();
            armatureTailSections.Add(new ChukiTailSection("Tail2", -13.329f, curl));
            armatureTailSections.Add(new ChukiTailSection("Tail3", -17.484f, curl));
            armatureTailSections.Add(new ChukiTailSection("Tail4", -19.602f, curl));
            armatureTailSections.Add(new ChukiTailSection("Tail5", -17.276f, curl));
            armatureTailSections.Add(new ChukiTailSection("Tail6", -24.159f, curl));
            armatureTailSections.Add(new ChukiTailSection("Tail7", -31.086f, curl));
            armatureTailSections.Add(new ChukiTailSection("Tail8", -32.704f, curl));
            armatureTailSections.Add(new ChukiTailSection("Tail9", -34.19f, curl));
            armatureTailSections.Add(new ChukiTailSection("Tail10", -45.917f, curl));
            armatureTailSections.Add(new ChukiTailSection("Tail11", -44.747f, curl));
            armatureTailSections.Add(new ChukiTailSection("TailEnd", -39.546f, curl));
        }
        //Expression Sets
        //public static readonly Dictionary<string, string> DictExpression = new Dictionary<string, string>()
        //{
        //    { "Default", "Default" },
        //    { "Bashful", "Bashful" },
        //    { "Beestung", "Beestung" },
        //    { "Bratty", "Bratty" },
        //    { "Closed", "Closed Eyes" },
        //    { "Energetic", "Energetic" },
        //    { "Narrow", "Narrow Eyes" },
        //    { "Sleepy", "Sleepy" },
        //};
        public static readonly string[] ExpressionList = new string[]
        {
            "Default",
            "Bashful",
            "Beestung",
            "Bratty",
            "Closed",
            "Energetic",
            "Narrow",
            "Sleepy",
        };
    }
    public class ChukiInstaller : EditorWindow
    {
        // Set where the installer window can be accessed from.
        [MenuItem("Tools/Chuki Installer")]
        // Method used to create the Editor Window, is auto called 
        static void ShowInstaller()
        {
            ChukiInstaller window = (ChukiInstaller)EditorWindow.GetWindow(typeof(ChukiInstaller), false, "Chuki Avatar Installer");
            window.minSize = new Vector2(400, 500);
            window.Show();
        }

        //Declaring variables
        // Menu
        static string[] rootMenuOptions = new string[]
        {
            "Chuki List",
            "Create New Chuki",
            "Import Chuki",
            "Change Log",
            "Info & Help",
        };
        static string[] menuOptions = new string[] // Drawfunctions
        {
            "Race / Gender", //DrawChukiRaces();
            "Hair",         // DrawHairstyles();
            "Leycrystals",  // DrawCrystals();
            "Crystal Colors",  // DrawCrystalsColors();
            "Body Material", //DrawBodyMaterial();
            "Height",       // DrawHeight();
            "Extras",       // DrawExtras();
            "Body Mods",    // DrawChukiBodyMods();
            "Head Mods",    // DrawChukiHeadMods();
            "Face Mods",    // DrawChukiFaceMods();
            "Fuzz Options", // DrawChukiFluffPanel();
            "Expressions",  // DrawExpressionSets();
            "Ear Flop Settings", // DrawEarFlop();
            "Valve Index?", // DrawValveIndex();
            "MMD", // DrawMMD();
            "Info & Help"   // DrawCredits();
        };

        // Hair Variables
        int chukiBraidMaxCount = chukiBraidOptions.Length - 1;
        static string[] chukiBraidOptions = new string[]
        {
        "None","Braid","Relaxed",
        };
        int chukiHairIndex, braidIndex = 0;
        bool[] BraidAvailable = new bool[chukiBraidOptions.Length];
        bool chukiBraid, chukiBraidBow;

        // Expression Sets
        int ExpressionExplanation;

        // turns these into functions after moving the statics to their own class.
        static float whisker1RPosXDif = (StaticValue.whisker1RPosXMax / StaticValue.whisker1RPosXMin) - 1.0f;
        static float whisker1RPosYDif = (StaticValue.whisker1RPosYMax / StaticValue.whisker1RPosYMin) - 1.0f;
        static float whisker1RPosZDif = (StaticValue.whisker1RPosZMax / StaticValue.whisker1RPosZMin) - 1.0f;
        static float whisker2RPosXDif = (StaticValue.whisker2RPosXMax / StaticValue.whisker2RPosXMin) - 1.0f;
        static float whisker2RPosYDif = (StaticValue.whisker2RPosYMax / StaticValue.whisker2RPosYMin) - 1.0f;
        static float whisker2RPosZDif = (StaticValue.whisker2RPosZMax / StaticValue.whisker2RPosZMin) - 1.0f;

        //BODY
        public Texture2D bodyTexture;
        // VRC SDK variables
        VRC_AvatarDescriptor _tempAvatarDescriptor;

        Object selectedChuki;

        //Chuki Model
        bool chukiBreast, glassesLenseToggle;
        bool QiuRace;
        bool SlimFrame = false;

        bool chukiCrystalNameTMP;        

        public static bool[] chukiAccessoriesArr = new bool[8];
        /*chukiAccessoriesArr
         * 0 = Ear Gauge Right
         * 1 = Ear Gague Left
         * 2 = Shoulder FLuffs
         * 3 = Ear FLuffs
         * 4 = Crystal Gauge Right
         * 5 = Crystal Gauge Left
         * 6 = PawPads
         * 7 = PawPads Crystals
        */

        // Extras Variables
        string[] chukiGlasses = new string[] { "None", "Ty", "Axtii", "Axtii with Ty Lenses" };
        int chukiGlassesIndex;
        int chukiGlassesMaxIndex = 3;
        string[] chukiWristband = new string[] { "None", "Classic", "Spiked", "Spiked v2", "Smooth" };
        string[] chukiBraidTie = new string[] { "Bow", "Tie 1", "Tie 2" };
        int chukiWristbandIndex;
        bool gaugeEarringL, gaugeEarringR, chukiLense, chukiLenseQuest, chukiNewLenseStatus, chukiFluffShoulder, chukiFluffEar, pawPads;

        // GUI Variables
        // foldouts
        
        int menuToggle = 1;
        int rootMenuToggle = 0;
        bool menuMain = true;
        bool hairMirror = false;
        string braidoptionFileName;
        bool foldoutCrystalPresets, foldoutAdvancedUser;
        Vector2 scrollPos = Vector2.zero;
        Vector2 scrollPos1 = Vector2.zero;

        GameObject myCamera, myRuler;

        bool useCustomHeight = false;
        bool runOnce = false;
        string myChukiName;

        // DLC Variables
        GameObject DLCCheck;
        string DLCFileToCheck;
        bool breastDLC = false;


        bool gaugeEarringLUpdate;
        string chukiGenerated = "";

        float chukiHeightValue;
        float chukiHeightUnityFloat;
        float chukiHairSizeValue;
        string chukiHeightUnity;

        Texture2D chukiHairTexture, chukiBraidtexture;

        // Measurements
        

        float earSize, hairSizeBraid, earFlop;
        public static float earFluffPos;
        public static float CrystalThemeColor1, CrystalThemeColor2, CrystalThemeColor3, CrystalThemeColor4, CrystalNormals;
        public static float CrystalThemeSat1, CrystalThemeSat2, CrystalThemeSat3, CrystalThemeSat4;
        public static float CrystalThemeVal1, CrystalThemeVal2, CrystalThemeVal3, CrystalThemeVal4;
        float hairSize, hairSizeFat, hairSizeSlim, hairSizeNeck = 1.0f;
        Vector3 rotEar;

        float whiskerSize, whiskerPosition, whiskerFloating, hornSizeL, hornSizeC, hornSizeR;
        Vector3 whisker1RPos, whisker1LPos, whisker2RPos, whisker2LPos;

        float noseSize;
        float snoutSize;
        float chinFuzz, cheekFuzz, elbowFuzz, shoulderFuzz, kneeFuzz, chestFuzz, shinFuzz;
        float browSize, everlyMuzzleSize, bradSnoutSize, bradChinSize, bradCheekSize, pecsSize;
        GameObject myArmature, myChuki, myChukiBody, BaseID;
        // Head Armatures
        GameObject armatureEarL, armatureEarR, armatureHairFat, armatureHairSlim, armatureHairNeck, armatureHairBraid, armatureWhisker1L, armatureWhisker2L, armatureWhisker1R, armatureWhisker2R;
        // Body Armatures
        GameObject armatureHandL, armatureHandR, armatureShFluffL, armatureShFluffR; 
        // Blendshape floats
        float armSize, armEverlySize, breastSize, chestSize, hipSize, waistSize, crotchSize, legSize, everlyHipsSize, tailSize;
        private float _armSize, _armEverlySize, _breastSize, _chestSize, _hipSize, _waistSize, _crotchSize, _legSize, _everlyHipsSize, _tailSize;
        // Armature floats
        float handSize, fluffSize;
        Vector3 scaleEar, scaleHair, scaleHairFat, scaleHairSlim, scaleHairNeck, scaleBraid, scaleWhisker, scaleHand, scaleHead, posTail, scaleFluff;
        GameObject armatureTailRoot, armatureTail2, armatureTail3, armatureTail4, armatureTail5, armatureTail6, armatureTail7, armatureTail8, armatureTail9, armatureTail10, armatureTail11, armatureTailEnd;
        
        float noseSizeSlider;
        Vector3 ChukiUnityUnits;
        Vector2 scrollPosition;
        // Hair Checks
        GameObject hairMirrorAvailable;
        //bool hairFatBool, hairSlimBool, hairNeckBool, hairBraidBool = false;

        Animator m_Animator;
        GameObject myDummyDefault;

        // Variables used only in InitializeCheck() Method
        GameObject launchArmature, myChukiCrystals;
        string UnityHeightString;
        string SceneName, path, sReadLine, sComparison;

        GameObject objectGlassScript;

        // MMD
        bool MMDAvatarConfig;
        bool MMDMode;
        bool BreastsEnabled;

        ///////
        void Awake() //Run once at launch of window
        {
            // Check for MyChukis folder
            if (!AssetDatabase.IsValidFolder("Assets/Chuki/MyChukis")) {
                AssetDatabase.CreateFolder("Assets/Chuki", "MyChukis");
            }

            // DLC Checks

            // Check for Breast DLC
            DLCFileToCheck = "BaseBreast";
            var DLCCheck = AssetDatabase.LoadAssetAtPath<GameObject>($"Assets/Chuki/SourceFiles/Prefabs/{DLCFileToCheck}.prefab");
            if (DLCCheck) { breastDLC = true; }

            // Search for Chuki game object
            myArmature = GameObject.Find("Armature");
            if (myArmature)
            {
                myChuki = GameObject.Find("My Chuki");
                if (myChuki) {
                    InitializeCheck(); // user generated a previous Chuki, we want to preserve the values.
                } else
                {
                    Debug.Log("We found an armature but no GameObject named \"My Chuki\" was found, please rename your Chuki to \"My Chuki\" to continue.");
                }
            }
            else
            {
                //ChukiTmpStart(); // Generate Preview Chuki
            }
        }
        private void OnDestroy()
        {
            SaveChuki();
        }
        public GUISkin myGUISkin;
        public Animation anim;
        void OnGUI() // Draw Window and controls
        {
            myGUISkin = AssetDatabase.LoadAssetAtPath<GUISkin>("Assets/Chuki/Editor/Chuki.guiskin");
            GUI.skin = myGUISkin;
            myRuler = GameObject.Find("Height Markers");

            //scrollPos = EditorGUILayout.BeginScrollView(scrollPos, false, true);

            if (menuMain)
            {
                runOnce = false;
                menuToggle = 1;

                // Create Area for Menu Options on Left Side
                GUILayout.BeginArea(new Rect(10, 10, 150, position.height - 20));
                int j = 1;
                foreach (string menuOption in rootMenuOptions)
                {
                    if (rootMenuToggle != j)
                    {
                        if (GUILayout.Button(menuOption)) { rootMenuToggle = j; CheckDirty(); };
                    } else
                    {
                        GUILayout.Button(menuOption, "Active");
                    }
                    j++;
                }
                GUILayout.EndArea();

                GUILayout.BeginArea(new Rect(180, 10, position.width-180, position.height-20));
                scrollPos = EditorGUILayout.BeginScrollView(scrollPos, GUILayout.Width(position.width - 190), GUILayout.Height(position.height - 20));
                // Toggle Display area based on Menu Selection

                //Poiyomi Check
                var Poiyomi = AssetDatabase.IsValidFolder("Assets/_PoiyomiShaders");
                if (!Poiyomi)
                {
                    GUILayout.Label("Poiyomi needs to be installed first");
                    if (GUILayout.Button("Get Poiyomi"))
                    {
                        Application.OpenURL("https://github.com/poiyomi/PoiyomiToonShader");
                    }
                }
                rootMenuDisplay(rootMenuToggle);
                EditorGUILayout.EndScrollView();
                GUILayout.EndArea();
                myChuki = GameObject.Find("My Chuki"); // Checking if user suddenly enables/renames a Chuki.
            }
            else
            { 
                if (runOnce == false) // Run once. Grab Data again, in case user enabled a preexisting Chuki with panel open.
                {
                    menuToggle = 1;
                    myChuki = GameObject.Find("My Chuki");
                    if (myChuki) { InitializeCheck(); }
                    else { menuDisplay(30); }
                    
                    runOnce = true;

                    AlignViewToObject(GameObject.Find("Camera.Main"), false);
                    if (myRuler)
                    {
                        myRuler.GetComponent<Renderer>().enabled = false;
                    }
                }

                SceneView view = SceneView.lastActiveSceneView;
                // Create Area for Menu Options on Left Side
                GUILayout.BeginArea(new Rect(10, 10, 150, 1000));

                // Create Menu Options
                
                if (GUILayout.Button("Main Menu")) 
                {
                    SaveChuki();
                    menuToggle = 0;
                    menuMain = true;
                };
                ChukiHelper.UI.Separator(false);

                int j = 1;
                foreach (string menuOption in menuOptions) // Swap this to use Dictionary
                {
                    //EditorGUI.BeginDisabledGroup(menuToggle == j);
                    if (menuToggle != j)
                    {
                        if (GUILayout.Button(menuOption)) { // do something if menu button is clicked
                            SaveChuki();

                            menuToggle = j;
                            switch (menuToggle)
                            {
                                case 1: case 3:
                                    //AlignViewToObject(GameObject.Find("Camera.Main"), false);
                                    myRuler.GetComponent<Renderer>().enabled = false;
                                    view.sceneViewState.alwaysRefresh = true;
                                    break;
                                case 2:
                                    //AlignViewToObject(GameObject.Find("Camera.Hair"), false);
                                    myRuler.GetComponent<Renderer>().enabled = false;
                                    view.sceneViewState.alwaysRefresh = false;
                                    break;
                                case 4:
                                    myRuler.GetComponent<Renderer>().enabled = false;
                                    view.sceneViewState.alwaysRefresh = true;
                                    break;
                                case 5:
                                    myRuler.GetComponent<Renderer>().enabled = false;
                                    view.sceneViewState.alwaysRefresh = false;
                                    break;
                                case 6:
                                    myRuler.GetComponent<Renderer>().enabled = true;
                                    view.sceneViewState.alwaysRefresh = false;
                                    //    AlignViewToObject(GameObject.Find("Camera.Height"), true);
                                    break;
                                case 9:
                                    myRuler.GetComponent<Renderer>().enabled = false;
                                    //AlignViewToObject(GameObject.Find("Camera.Hair"), false);
                                    break;
                                default:
                                    myRuler.GetComponent<Renderer>().enabled = false;
                                    view.sceneViewState.alwaysRefresh = false;
                                    break;
                            }
                        }
                        switch (menuOption) // add a separator on the menu
                        {
                            case "Height":
                                ChukiHelper.UI.Separator(false);
                                break;
                            case "Fuzz Options":
                                ChukiHelper.UI.Separator(false);
                                break;
                            case "Info & Help":
                                ChukiHelper.UI.Separator(false);
                                break;
                        }
                    } else
                    {
                        GUILayout.Button(menuOption, "Active");
                        switch (menuOption) // add a separator on the menu
                        {
                            case "Height":
                                ChukiHelper.UI.Separator(false);
                                break;
                            case "Fuzz Options":
                                ChukiHelper.UI.Separator(false);
                                break;
                            case "Info & Help":
                                ChukiHelper.UI.Separator(false);
                                break;
                        }
                    }
                    EditorGUI.EndDisabledGroup();
                    j++;
                }


                if (GUILayout.Button("Save & Close!", "GreenButton", GUILayout.Height(50)))
                {
                    /*
                    try
                    {
                        throw new System.Exception("Test Exception");
                    }
                    catch (System.Exception e)
                    { 
                        Debug.Log(e.Message + "Came from Catch");
                    }

                    finally 
                    { 

                    }*/

                    SaveChuki();
                    this.Close();
                }



                if (GUILayout.Button("Test"))
                {
                    Debug.Log("Test Pressed");
                }

                    //SerializedObject serializedobject;
                    //var sPoi = new SerializedObject(GameObject.Find("Body").GetComponent<Renderer>().sharedMaterial);
                    //var dPoi = sPoi.FindProperty("_UDIMDiscardRow2_0");
                    //Debug.Log(dPoi);

                    //GameObject rootChukiBody = GameObject.Find("Body");
                    //var thisRend = rootChukiBody.GetComponent<Renderer>();
                    ////thisRend.sharedMaterial.SetFloat("_UDIMDiscardRow2_0", isAlive ? 1 : 0); // Left ear Gauge ear hole
                    ////Debug.Log("ForgotToLock: " + thisRend.sharedMaterial.GetFloat("_ForgotToLockMaterial")); // Left ear Gauge ear hole
                    //
                    //thisRend.sharedMaterial.SetFloat("_ShaderOptimizerEnabled", 1f);
                    //
                    //Debug.Log("ShaderEnable: " + thisRend.sharedMaterial.GetFloat("_ShaderOptimizerEnabled"));


                    //GameObject myCrystals = GameObject.Find("Crystals");
                    //var thisRend = myCrystals.GetComponent<Renderer>().sharedMaterial;
                    //Debug.Log(thisRend.GetFloat("_ShaderOptimizerEnabled"));

                    //ChukiCustomizer.BodyFrameSwitch(true);
                    //    string animationName = "(6+6): Wink";
                    //    int layer = 2;
                    //    float normalizedTime = 1.0f;
                    //    GameObject player = GameObject.Find("My Chuki");
                    //    Animator animator = player.GetComponent<Animator>();
                    //    if (player != null && animator != null)
                    //    {
                    //        animator.speed = 0f;
                    //        animator.Play(animationName, layer, normalizedTime);
                    //        animator.Update(Time.deltaTime);
                    //    }
                    //    //This works BUT it needs to not SAVE the data ;u;
                    //    //Animation needs to have a TPOSE added to it.
                    //
                    //    //private void setAnimationFrame(string animationName, int layer, float normalizedAnimationTime)
                    //    //{
                    //    //    if (player != null && player._animator != null)
                    //    //    {
                    //    //        player._animator.speed = 0f;
                    //    //        player._animator.Play(animationName, layer, normalizedTime);
                    //    //        player._animator.Update(Time.deltaTime);
                    //    //    }
                    //    //}
                //}

                if (GUILayout.Button("Delete", "DeleteButton")) { menuToggle = 20; }

                GUILayout.EndArea();

                // Name Area
                bool duplicateChuki = false;
                GUILayout.BeginArea(new Rect(180, 20, 400, 30));
                GUILayout.BeginHorizontal();
                GUILayout.Label("Name: ", GUILayout.MaxWidth(42), GUILayout.Height(30));
                var defaultFontSize = GUI.skin.textField.fontSize;
                myChukiName = GUILayout.TextField(myChukiName, 20);
                if (myChukiName != EditorSceneManager.GetActiveScene().name)
                {
                    if (GUILayout.Button("Apply", "GreenButton"))
                    {
                        // Check for duplicate name before renaming
                        string[] findExistingChuki = AssetDatabase.FindAssets(myChukiName, new[] { "Assets/Chuki/MyChukis"});
                        foreach (string result in findExistingChuki)
                        {
                            string str = AssetDatabase.GUIDToAssetPath(result).ToString();
                            str = str.Replace("Assets/Chuki/MyChukis/", "");
                            str = str.Replace(".unity", "");
                            if (str.Contains(myChukiName))
                            {
                                duplicateChuki = true;
                            }
                        }

                        if (duplicateChuki)
                        {
                            Debug.LogError("A Chuki by that name already exists.");
                            // TODO: Fail Nicely and inform user to change name.
                        }
                        else // Rename Chuki
                        {
                            string oldSceneName = EditorSceneManager.GetActiveScene().name;
                                AssetDatabase.MoveAssetToTrash($"Assets/Chuki/MyChukis/{oldSceneName}.unity");
                                bool saveOK = EditorSceneManager.SaveScene(EditorSceneManager.GetActiveScene(), $"Assets/Chuki/MyChukis/{myChukiName}.unity");
                                string renameOK = AssetDatabase.RenameAsset($"Assets/Chuki/MyChukis/{oldSceneName}", myChukiName);
                        }
                    }
                }
                GUILayout.EndHorizontal();
                GUILayout.EndArea();

                // Create Area on Right side for Options to be displayed
                GUILayout.BeginArea(new Rect(180, 50, position.width-200, position.height));
                // Toggle Display area based on Menu Selection
                myChuki = GameObject.Find("My Chuki"); // Check if user has disabled their Chuki while the installer is in this mode.
                
                if (myChuki)
                {
                    menuDisplay(menuToggle);
                } else
                {
                    menuDisplay(30);
                }
                GUILayout.EndArea();
            }
            //EditorGUILayout.EndScrollView();
        }
        void InitializeCheck()
        {
            // check for MMD Mode
            myChuki = GameObject.Find("My Chuki");
            if (myChuki.GetComponent<Animator>().avatar.ToString().Contains("MMD"))
            { MMDMode = true; }
            else { MMDMode = false; }

            // check for Breasts
            GameObject baseID = GameObject.Find("KWood");
            GameObject BaseIDName = baseID.transform.GetChild(0).gameObject;
            if (BaseIDName.name == "BaseID: BaseBreast")
            { BreastsEnabled = true; }
            else { BreastsEnabled = false; }

            // Grab Name!
            myChukiName = EditorSceneManager.GetActiveScene().name;

            // HEIGHT CHECK. Grab Scale from Chuki.
            ChukiUnityUnits = myChuki.transform.localScale;
            //Convert to a string for easy editing, only grab X value of Scale from Vector3 Array. 
            UnityHeightString = ChukiUnityUnits[0].ToString();
            if (chukiHeightUnity != UnityHeightString) // Height value mismatch, match value in Installer to actual height.
            {
                chukiHeightUnity = UnityHeightString;
            }
            // HEIGHT TEST
            chukiHeightUnityFloat = ChukiUnityUnits[0];

            ////
            // Check Race
            launchArmature = GameObject.Find("Armature");
            switch (launchArmature.transform.localScale[0])
            {
                case 0.8f: // Qiu Chuki Detected
                    QiuRace = true;
                    break;
                default: //Aes or Unknown scale detected, set to Aes
                    QiuRace = false;
                    break;
            }

            //
            // ARMATURE CHECKS, Find the value of these items on awake and set the slider variables to match.
            launchArmature = GameObject.Find("Hand.L");
            handSize = launchArmature.transform.localScale[0];
            launchArmature = GameObject.Find("ShFluffRoot.L");
            fluffSize = launchArmature.transform.localScale[0];
            launchArmature = GameObject.Find("Tail2");
            tailSize = launchArmature.transform.localPosition[1];
            launchArmature = GameObject.Find("EarRoot.R");
            earSize = launchArmature.transform.localScale[0];
            launchArmature = GameObject.Find("Whisker.1.R");
            whiskerSize = launchArmature.transform.localScale[0];
            whisker1RPos = launchArmature.transform.localPosition;
            whiskerPosition = (((whisker1RPos[0] / StaticValue.whisker1RPosXMin) - 1.0f) / whisker1RPosXDif);

            // Figure out which hairstyle we have
            launchArmature = GameObject.Find("KWood");
            string HairID = launchArmature.transform.GetChild(1).name;
            HairID = HairID.Replace("HairID: ", "");
            HairID = HairID.Replace("_m", ""); // don't really care if it's mirrored
            chukiHairIndex = StaticValue.DictHairOptions[HairID];

            // For the hair, the scale is taken from the children bones of the found game object.
            launchArmature = GameObject.Find("Hair.Fat.Root");
            //if (launchArmature) { hairSizeFat = launchArmature.transform.GetChild(0).localScale[0]; }
            if (launchArmature && launchArmature.transform.childCount != 0)
            {
                hairSizeFat = launchArmature.transform.GetChild(0).localScale[0];
            }
            launchArmature = GameObject.Find("Hair.Slim.Root");
            if (launchArmature && launchArmature.transform.childCount != 0)
            {
                hairSizeSlim = launchArmature.transform.GetChild(0).localScale[0];
            }
            launchArmature = GameObject.Find("Hair.Neck.Root");
            if (launchArmature && launchArmature.transform.childCount != 0)
            {
                hairSizeNeck = launchArmature.transform.GetChild(0).localScale[0];
            }
            launchArmature = GameObject.Find("Hair.Braid.1");
            if (launchArmature) { hairSizeBraid = launchArmature.transform.localScale[0]; } // Hair Braid scales differently than the rest.


            // TODO: ear rotation is a mystery ;u;
            // Created a txt file to store the rotation values instead c:
            SceneName = EditorSceneManager.GetActiveScene().name;
            path = $"Assets/Chuki/MyChukis/{SceneName}/backup.txt";
            //Read the text from directly from the test.txt file

            if (AssetDatabase.LoadAssetAtPath<TextAsset>($"Assets/Chuki/MyChukis/{SceneName}/backup.txt"))
            {
                StreamReader reader = new StreamReader(path);
                while (reader.Peek() >= 0)
                {
                    sReadLine = reader.ReadLine();
                    sComparison = "earFlop";
                    if (sReadLine.Contains(sComparison))
                    {
                        sReadLine = sReadLine.Replace("earFlop:", "");
                        earFlop = float.Parse(sReadLine);
                    }
                }
                reader.Close();
            }
            else
            {
                HandleTextFile.WriteString("earFlop", 0.0f);
                earFlop = 0.0f;
            }

            // Check existing Crystal Blendshape settings and preserve them, otherwise the installer reverts them to default.
            //CheckCrystals();

            SkinnedMeshRenderer skinnedMeshRenderer;

            myChukiCrystals = GameObject.Find("Crystals");
            if (myChukiCrystals)
            {
                skinnedMeshRenderer = myChukiCrystals.GetComponent<SkinnedMeshRenderer>();
                string[] CrystalNameList = ChukiHelper.DoAction.GetCrystalList(myChukiCrystals);
                bool[] CrystalArr = new bool[CrystalNameList.Length];

                for (int i = 0; i < CrystalNameList.Length; i++) // Number of *_HIDE Crystal BlendShapes.
                {
                    // ChujiREF: BOOL ChukiCrystalArr[i] will only equal to TRUE if the condition is met.
                    CrystalArr[i] = (skinnedMeshRenderer.GetBlendShapeWeight(i) != 100);
                }
                chukiAccessoriesArr[4] = (skinnedMeshRenderer.GetBlendShapeWeight(StaticValue.DictCrystal["GaugeR_HIDE"]) != 100);
                chukiAccessoriesArr[5] = (skinnedMeshRenderer.GetBlendShapeWeight(StaticValue.DictCrystal["GaugeL_HIDE"]) != 100);
                hornSizeL = skinnedMeshRenderer.GetBlendShapeWeight(StaticValue.DictCrystal["HornSizeL"]);
                hornSizeR = skinnedMeshRenderer.GetBlendShapeWeight(StaticValue.DictCrystal["HornSizeR"]);
                hornSizeC = skinnedMeshRenderer.GetBlendShapeWeight(StaticValue.DictCrystal["HornSizeC"]);
            }

            // Color Sliders
            if (myChukiCrystals)
            {
                // Get Material
                var thisRend = myChukiCrystals.GetComponent<Renderer>().sharedMaterial;

                // Grab and Set Values
                CrystalThemeColor1 = thisRend.GetFloat("_GlobalThemeHue0");
                CrystalThemeColor2 = thisRend.GetFloat("_GlobalThemeHue1");
                CrystalThemeColor3 = thisRend.GetFloat("_GlobalThemeHue2");
                CrystalThemeColor4 = thisRend.GetFloat("_GlobalThemeHue3");
                CrystalThemeSat1 = thisRend.GetFloat("_GlobalThemeSaturation0");
                CrystalThemeSat2 = thisRend.GetFloat("_GlobalThemeSaturation1");
                CrystalThemeSat3 = thisRend.GetFloat("_GlobalThemeSaturation2");
                CrystalThemeSat4 = thisRend.GetFloat("_GlobalThemeSaturation3");
                CrystalThemeVal1 = thisRend.GetFloat("_GlobalThemeValue0");
                CrystalThemeVal2 = thisRend.GetFloat("_GlobalThemeValue1");
                CrystalThemeVal3 = thisRend.GetFloat("_GlobalThemeValue2");
                CrystalThemeVal4 = thisRend.GetFloat("_GlobalThemeValue3");
                CrystalNormals = thisRend.GetFloat("_NormalCorrectAmount");
            }

            // BlendShape CHECKS. Check existing Blendshape settings and preserve them, otherwise the installer reverts them to default.
            // Body BlendShapes
            myChukiBody = GameObject.Find("Body");
            skinnedMeshRenderer = myChukiBody.GetComponent<SkinnedMeshRenderer>();
            Mesh mesh = skinnedMeshRenderer.sharedMesh;

            // Body Mods
            armSize = ChukiHelper.DoAction.GetBlendShapeValue(skinnedMeshRenderer, mesh, "arm_size");
            armEverlySize = ChukiHelper.DoAction.GetBlendShapeValue(skinnedMeshRenderer, mesh, "arm_slimmer");
            chestSize = ChukiHelper.DoAction.GetBlendShapeValue(skinnedMeshRenderer, mesh, "chest_size");
            hipSize = ChukiHelper.DoAction.GetBlendShapeValueCombo(skinnedMeshRenderer, mesh, "hip_large", "hip_small");
            legSize = ChukiHelper.DoAction.GetBlendShapeValueCombo(skinnedMeshRenderer, mesh, "leg_large", "leg_small");
            waistSize = ChukiHelper.DoAction.GetBlendShapeValueCombo(skinnedMeshRenderer, mesh, "waist_large", "waist_small");
            breastSize = ChukiHelper.DoAction.GetBlendShapeValueCombo(skinnedMeshRenderer, mesh, "breast_size_large", "breast_size_small");
            everlyHipsSize = ChukiHelper.DoAction.GetBlendShapeValue(skinnedMeshRenderer, mesh, "Everly_LowerBody");
            pecsSize = ChukiHelper.DoAction.GetBlendShapeValue(skinnedMeshRenderer, mesh, "Pecs");
            crotchSize = ChukiHelper.DoAction.GetBlendShapeValue(skinnedMeshRenderer, mesh, "Crotch");

            // Face Mods
            noseSize = ChukiHelper.DoAction.GetBlendShapeValue(skinnedMeshRenderer, mesh, "nose_size");
            snoutSize = ChukiHelper.DoAction.GetBlendShapeValueCombo(skinnedMeshRenderer, mesh, "snout_large", "snout_small");
            browSize = ChukiHelper.DoAction.GetBlendShapeValue(skinnedMeshRenderer, mesh, "EyebrowBridge");
            everlyMuzzleSize = ChukiHelper.DoAction.GetBlendShapeValue(skinnedMeshRenderer, mesh, "Everly_muzzle");
            bradSnoutSize = ChukiHelper.DoAction.GetBlendShapeValue(skinnedMeshRenderer, mesh, "Brad_snout");
            bradChinSize = ChukiHelper.DoAction.GetBlendShapeValue(skinnedMeshRenderer, mesh, "Brad_chin");
            bradCheekSize = ChukiHelper.DoAction.GetBlendShapeValue(skinnedMeshRenderer, mesh, "Brad_cheeks");

            // Head Mods
            whiskerFloating = ChukiHelper.DoAction.GetBlendShapeValue(skinnedMeshRenderer, mesh, "FloatingWhiskers");

            // Fuzz Options
            chinFuzz = ChukiHelper.DoAction.GetBlendShapeValue(skinnedMeshRenderer, mesh, "Fuzz_Chin");
            cheekFuzz = ChukiHelper.DoAction.GetBlendShapeValue(skinnedMeshRenderer, mesh, "Fuzz_Cheeks");
            elbowFuzz = ChukiHelper.DoAction.GetBlendShapeValue(skinnedMeshRenderer, mesh, "Fuzz_Elbows");
            shoulderFuzz = ChukiHelper.DoAction.GetBlendShapeValue(skinnedMeshRenderer, mesh, "Fuzz_Shoulders");
            kneeFuzz = ChukiHelper.DoAction.GetBlendShapeValue(skinnedMeshRenderer, mesh, "Fuzz_Knees");
            chestFuzz = ChukiHelper.DoAction.GetBlendShapeValue(skinnedMeshRenderer, mesh, "Fuzz_Chest");
            shinFuzz = ChukiHelper.DoAction.GetBlendShapeValue(skinnedMeshRenderer, mesh, "Fuzz_Shins");

            chukiAccessoriesArr[2] = (ChukiHelper.DoAction.GetBlendShapeValue(skinnedMeshRenderer, mesh, "ShoulderFluffs_HIDE") != 100);
            MatScript.ChangeUDIM("fluffShoulder", chukiAccessoriesArr[2]);


            // Determine which wristband blendshape was being used.
            //if (skinnedMeshRenderer.GetBlendShapeWeight(StaticValue.DictBody["Wristband HIDE"]) == 0 && skinnedMeshRenderer.GetBlendShapeWeight(StaticValue.DictBody["Wristband Spiked"]) == 0 && skinnedMeshRenderer.GetBlendShapeWeight(StaticValue.DictBody["Wristband Spike 2"]) == 0 && skinnedMeshRenderer.GetBlendShapeWeight(StaticValue.DictBody["Wristband Smooth"]) == 0)
            if (ChukiHelper.DoAction.GetBlendShapeValue(skinnedMeshRenderer, mesh, "Wristband_HIDE") == 0 && ChukiHelper.DoAction.GetBlendShapeValue(skinnedMeshRenderer, mesh, "Ty_Wristband_Spiked") == 0 && ChukiHelper.DoAction.GetBlendShapeValue(skinnedMeshRenderer, mesh, "Ty_Wristband_Spike2") == 0 && ChukiHelper.DoAction.GetBlendShapeValue(skinnedMeshRenderer, mesh, "Ty_Wristband_Smooth") == 0)
            {
                chukiWristbandIndex = 1;    // CLASSIC
            }
            else if (ChukiHelper.DoAction.GetBlendShapeValue(skinnedMeshRenderer, mesh, "Ty_Wristband_Spiked") == 100)
            {
                chukiWristbandIndex = 2;    // SPIKED
            }
            else if (ChukiHelper.DoAction.GetBlendShapeValue(skinnedMeshRenderer, mesh, "Ty_Wristband_Spike2") == 100)
            {
                chukiWristbandIndex = 3;    // SPIKED V2
            }
            else if (ChukiHelper.DoAction.GetBlendShapeValue(skinnedMeshRenderer, mesh, "Ty_Wristband_Smooth") == 100)
            {
                chukiWristbandIndex = 4;    // SMOOTH
            }
            else { chukiWristbandIndex = 0;    /* None */ }

            // Accessories Blendshape Check
            GameObject myChukiAccessories;
            myChukiAccessories = GameObject.Find("Accessories");
            if (myChukiAccessories)
            {
                skinnedMeshRenderer = myChukiAccessories.GetComponent<SkinnedMeshRenderer>();
                mesh = skinnedMeshRenderer.sharedMesh;
                for (int i = 0; i < 4; i++)
                {
                    switch (i)
                    {
                        case 0: // Ear Gauge Right
                            chukiAccessoriesArr[i] = (ChukiHelper.DoAction.GetBlendShapeValue(skinnedMeshRenderer, mesh, "GaugeR_HIDE") != 100);
                            break;
                        case 1: // Ear Gauge Left
                            chukiAccessoriesArr[i] = (ChukiHelper.DoAction.GetBlendShapeValue(skinnedMeshRenderer, mesh, "GaugeL_HIDE") != 100);
                            break;
                        case 3: // Ear FLuffs, Handles in Body Blendshape Checks
                            chukiAccessoriesArr[i] = (ChukiHelper.DoAction.GetBlendShapeValue(skinnedMeshRenderer, mesh, "EarTufts_HIDE") != 100);
                            MatScript.ChangeUDIM("fluffEar", chukiAccessoriesArr[i]);
                            break;
                        case 4: // Ear Tufts Position
                            earFluffPos = skinnedMeshRenderer.GetBlendShapeWeight(StaticValue.DictAccessories["EarTufts Position"]);
                            break;
                    }
                }
            }

            /*
            objectGlassScript = GameObject.Find("Script.Glasses");
            if (objectGlassScript) { 
            VRCContactReceiver VRCCRref = objectGlassScript.GetComponent(typeof(VRCContactReceiver)) as VRCContactReceiver;

            skinnedMeshRenderer = myChukiAccessories.GetComponent<SkinnedMeshRenderer>();
            if (skinnedMeshRenderer.GetBlendShapeWeight(StaticValue.DictAccessories["Glasses_Ty_HIDE"]) == 0 && skinnedMeshRenderer.GetBlendShapeWeight(StaticValue.DictAccessories["Glasses_Axtii_HIDE"]) == 100)
            {
                chukiGlassesIndex = 1;
                if (objectGlassScript)
                {
                    //objectGlassScript.SetActive(true);
                    VRCCRref.enabled = true;
                }
            }
            else if (skinnedMeshRenderer.GetBlendShapeWeight(StaticValue.DictAccessories["Glasses_Ty_HIDE"]) == 100 && skinnedMeshRenderer.GetBlendShapeWeight(StaticValue.DictAccessories["Glasses_Axtii_HIDE"]) == 0)
            {
                chukiGlassesIndex = 2;
                if (objectGlassScript)
                {
                    //objectGlassScript.SetActive(true);
                    VRCCRref.enabled = true;
                }
            }
            else
            {
                chukiGlassesIndex = 0;
                if (objectGlassScript)
                {
                    //objectGlassScript.SetActive(false);
                    VRCCRref.enabled = false;
                }
            } */

            //Figure out which Expression Set is being used
            GameObject mySource = GameObject.Find("My Chuki");
            VRC_AvatarDescriptor desc = mySource.GetComponent<VRC_AvatarDescriptor>();
            string ExpressionUsed = desc.baseAnimationLayers[4].animatorController.name;
            ExpressionUsed = ExpressionUsed.Replace("FX_", "");
            int p = 0;
            foreach (string Expression in StaticValue.ExpressionList)
            {
                if (ExpressionUsed == Expression)
                {
                    ExpressionExplanation = p;
                }
                p++;
            }
        }
        void DrawHeader() // Installer Information
        {
            GUILayout.Label($"Chuki Version: {StaticValue.chukiVer}");
            GUILayout.Label($"Installer Version: {StaticValue.updateVer}");
        }
        //TODO: Move DrawBreasts to ChukiCustomizer
        void DrawBreast(bool SlimFrame, bool QiuRace) // Toggle Select for Breasts.
        {
            GameObject tmpChukiObject1;
            tmpChukiObject1 = GameObject.Find("Breast.Script");
            VRCPhysBone VRCPB = tmpChukiObject1.GetComponent(typeof(VRCPhysBone)) as VRCPhysBone;

            if (breastDLC == true)
            {
                chukiBreast = GameObject.Find("BaseID: Base");
                if (GUILayout.Button("Toggle Breasts", GUILayout.Height(25)))
                {
                    //string twink = "";
                    //if (SlimFrame) { twink = "Twink"; }
                    //if (QiuRace) { twink = ""; }
                    switch (chukiBreast)
                    {
                        case true:
                            ChukiCustomizer.BreastSwitch(SlimFrame, chukiBreast);
                            //TODO Change below so it ADDs the Breast.Script
                            VRCPB.enabled = true;
                            chukiBreast = false;
                            break;
                        case false:
                            ChukiCustomizer.BreastSwitch(SlimFrame, chukiBreast);
                            //TODO Change below so it REMOVES the Breast.Script
                            VRCPB.enabled = false;
                            chukiBreast = true;
                            break;
                    }
                }
                GUILayout.Label("Differences between Male and Female body types are very minor to keep things fairly gender neutral.");
            }
            else
            {
                if (GUILayout.Button("Breast DLC?", GUILayout.Height(25)))
                {
                    Application.OpenURL("https://shiuk.gumroad.com/");
                }
                GUILayout.Label("Download and install the Breast Unity Package, then restart this installer.");
            }
        }
        void DrawBraid() // Toggle Select for Braid.
        {
            if (GUILayout.Button("Toggle Braid", GUILayout.Height(25)))
            {
                switch (chukiBraid)
                {
                    case true:
                        chukiBraid = false;
                        ChukiTmpPreview();
                        break;
                    default:
                        chukiBraid = true;
                        ChukiTmpPreview();
                        break;
                }
            }
        }
        void DrawChukiRaces() // Button Select for Race Options
        {
            _tempAvatarDescriptor = myChuki.GetComponent<VRC_AvatarDescriptor>();

            ChukiHelper.UI.Separator(true);
            // Display information for current option
            if (QiuRace)
            {
                GUILayout.Label("Qiu Chuki\nShorter, feature longer tails, shorter legs, and larger heads.");
            } else
            {
                GUILayout.Label("Aes Chuki\nThe standard Chuki.");
            }

            // Button Select for your race option.
            GUILayout.BeginHorizontal();

            if (QiuRace)
            {
                if (GUILayout.Button("Convert to Aes", GUILayout.Height(25)))
                {
                    if (myChuki.GetComponent<Animator>().avatar.ToString().Contains("MMD"))
                    { MMDMode = true; } else { MMDMode = false; }

                    QiuRace = false;
                    SlimFrame = false;
                    ChukiCustomizer.BodyFrameSwitch(SlimFrame);
                    ChukiCustomizer.RaceSwitch(QiuRace);
                    ChukiCustomizer.BreastSwitch(SlimFrame, BreastsEnabled);
                    MoveViewpointToScale(_tempAvatarDescriptor, chukiHeightUnityFloat); // move viewpoint
                    ChukiCustomizer.ChangeAvatarConfig(QiuRace, MMDMode, SlimFrame); // change animator avatar
                }
            } else
            {
                GUILayout.Button("Aes Selected", "Active");
            }

            if (QiuRace == false)
            {
                if (GUILayout.Button("Convert to Qiu", GUILayout.Height(25)))
                {
                    if (myChuki.GetComponent<Animator>().avatar.ToString().Contains("MMD"))
                    { MMDMode = true; } else { MMDMode = false; }

                    QiuRace = true;
                    SlimFrame = false;
                    ChukiCustomizer.BodyFrameSwitch(SlimFrame);
                    ChukiCustomizer.RaceSwitch(QiuRace);
                    ChukiCustomizer.BreastSwitch(SlimFrame, BreastsEnabled);
                    MoveViewpointToScale(_tempAvatarDescriptor, chukiHeightUnityFloat);
                    ChukiCustomizer.ChangeAvatarConfig(QiuRace, MMDMode, SlimFrame);
                }
            } else
            {
                GUILayout.Button("Qiu Selected", "Active");
            }
            
            GUILayout.EndHorizontal();

            // Breast Button
            ChukiHelper.UI.Separator(true);
            DrawBreast(SlimFrame, QiuRace);

            ChukiHelper.UI.Separator(true);

            GUILayout.BeginHorizontal();
            // Button Select for Body Frame type
            EditorGUI.BeginDisabledGroup(SlimFrame == false || QiuRace == true);
            {
                if (GUILayout.Button("Standard Body Frame", GUILayout.Height(25)))
                {
                    if (myChuki.GetComponent<Animator>().avatar.ToString().Contains("MMD"))
                    { MMDMode = true; } else { MMDMode = false; }

                    if (GameObject.Find("KWood").transform.GetChild(0).gameObject.name == "BaseID: BaseBreast")
                    { BreastsEnabled = true; } else { BreastsEnabled = false; }

                    ChukiCustomizer.ChangeAvatarConfig(QiuRace, MMDMode, false);
                    ChukiCustomizer.BodyFrameSwitch(false);
                    ChukiCustomizer.BreastSwitch(false, BreastsEnabled);

                    MoveViewpointToScale(_tempAvatarDescriptor, chukiHeightUnityFloat);

                    SlimFrame = false;
                }
            }
            EditorGUI.EndDisabledGroup();

            EditorGUI.BeginDisabledGroup(SlimFrame == true || QiuRace == true);
            {
                if (GUILayout.Button("Slim Body Frame", GUILayout.Height(25)))
                {
                    if (myChuki.GetComponent<Animator>().avatar.ToString().Contains("MMD"))
                    { MMDMode = true; } else { MMDMode = false; }

                    if (GameObject.Find("KWood").transform.GetChild(0).gameObject.name == "BaseID: BaseBreast")
                    { BreastsEnabled = true; } else { BreastsEnabled = false; }

                    ChukiCustomizer.ChangeAvatarConfig(QiuRace, MMDMode, true);
                    ChukiCustomizer.BodyFrameSwitch(true);
                    ChukiCustomizer.BreastSwitch(true, BreastsEnabled);
                    //Chuji Question: Why does commenting out the code below make my code above work fine? I ended up moving it above and now it works ;u;
                    //ChukiCustomizer.ChangeAvatarConfig(QiuRace, MMDMode, true);

                    MoveViewpointToScale(_tempAvatarDescriptor, chukiHeightUnityFloat);
                    SlimFrame = true;
                }
            }
            EditorGUI.EndDisabledGroup();
            GUILayout.EndHorizontal();
            GUILayout.Label("Body Frame options are only available on Aes.");
        }
        void DrawHairstyles()
        {
            //Material test;
            //GameObject myAccessories;
            ChukiHelper.UI.Separator(true);
            // HAIR OPTIONS
            GUILayout.Label($"Current Hairstyle: {StaticValue.chukiHairNames[chukiHairIndex]}", EditorStyles.boldLabel);
            GUILayout.Space(10);

            // HAIR TOGGLE BUTTONS
            GUILayout.BeginHorizontal();

            EditorGUI.BeginDisabledGroup(chukiHairIndex <= 0);
            {
                if (GUILayout.Button("Previous", GUILayout.Height(25)))
                {
                    --chukiHairIndex;
                    ChukiCustomizer.ChukiHairSwap(chukiHairIndex, false, QiuRace, myChukiName);
                    hairMirrorAvailable = AssetDatabase.LoadAssetAtPath<GameObject>($"Assets/Chuki/SourceFiles/Prefabs/Hair/{StaticValue.chukiHairOptions[chukiHairIndex]}_m.prefab");
                }
            }
            EditorGUI.EndDisabledGroup();

            EditorGUI.BeginDisabledGroup(chukiHairIndex >= (StaticValue.chukiHairOptions.Length - 1));
            {
                if (GUILayout.Button("Next", GUILayout.Height(25)))
                {
                    ++chukiHairIndex;
                    ChukiCustomizer.ChukiHairSwap(chukiHairIndex, false, QiuRace, myChukiName);
                    hairMirrorAvailable = AssetDatabase.LoadAssetAtPath<GameObject>($"Assets/Chuki/SourceFiles/Prefabs/Hair/{StaticValue.chukiHairOptions[chukiHairIndex]}_m.prefab");
                }
            }
            EditorGUI.EndDisabledGroup();
            GUILayout.EndHorizontal();
            ChukiHelper.UI.Separator(true);

            // Hairstyle Grid
            // TODO Add check for Mirror AND Braid
            Texture2D IconTexture;
            int i = 0;
            int j = -1;
            
            foreach (string hairstyle in StaticValue.chukiHairOptions)
            {
                if (j != i / 5) { // begin horizontal only on first and every 6th element.
                    j = i / 5;
                    GUILayout.BeginHorizontal(); 
                } 
                if (chukiHairIndex == i) // load a different image depending if Hair is active
                {
                    IconTexture = AssetDatabase.LoadAssetAtPath<Texture2D>($"Assets/Chuki/Editor/Resources/Hair/{hairstyle}_selected.png");
                }
                else
                {
                    IconTexture = AssetDatabase.LoadAssetAtPath<Texture2D>($"Assets/Chuki/Editor/Resources/Hair/{hairstyle}.png");
                }
                //int m = 0;
                if (GUILayout.Button(IconTexture, "TileButton", GUILayout.MaxWidth(75)))
                {
                    chukiHairIndex = i;
                    ChukiCustomizer.ChukiHairSwap(chukiHairIndex, false, QiuRace, myChukiName);
                    hairMirror = false;

                    // Check if Mirror Toggle is available
                    hairMirrorAvailable = AssetDatabase.LoadAssetAtPath<GameObject>($"Assets/Chuki/SourceFiles/Prefabs/Hair/{StaticValue.chukiHairOptions[chukiHairIndex]}_m.prefab");
                };
                if (j != (i+1)/5 || i == StaticValue.chukiHairOptions.Length - 1)
                {
                    GUILayout.EndHorizontal();
                }
                i++;
            }

            ChukiHelper.UI.Separator(true);
            // Mirror Toggle
            EditorGUI.BeginDisabledGroup(hairMirrorAvailable == null);
            {
                if (GUILayout.Button("Mirror")) {
                    ChukiCustomizer.ChukiHairSwap(chukiHairIndex, !hairMirror, QiuRace, myChukiName); hairMirror = !hairMirror;
                };
            }
            EditorGUI.EndDisabledGroup();
            
            ChukiHelper.UI.Separator(true);
            // Braid Selection
            int k = 0;
            int l = -1;
            foreach (string braidstyle in StaticValue.BraidOptions)
            {
                //ButtonWrap Start
                if (l != k / 5) {  // Begin horizontal ONLY on first and every 6th element.
                    l = k / 5;
                    GUILayout.BeginHorizontal();
                }
                if (braidIndex == k) // load a different image depending if braid is active.
                {
                    // selected image
                    IconTexture = AssetDatabase.LoadAssetAtPath<Texture2D>($"Assets/Chuki/Editor/Resources/Ponytail/{braidstyle}_selected.png");
                } else
                {
                    // normal image
                    IconTexture = AssetDatabase.LoadAssetAtPath<Texture2D>($"Assets/Chuki/Editor/Resources/Ponytail/{braidstyle}.png");
                }
                if (GUILayout.Button(IconTexture, "TileButton", GUILayout.MaxHeight(75)))
                {
                    braidIndex = k;
                    ChukiCustomizer.PonytailSwap(k);
                };

                // Button to select a braid
                //EditorGUI.BeginDisabledGroup(!BraidAvailable[k]);
                //{
                //    if (GUILayout.Button(braidstyle, GUILayout.MaxWidth(75)))
                //    {
                //        braidIndex = k;
                //        ChukiCustomizer.ChukiHairSwap(chukiHairIndex, hairMirror, QiuRace, myChukiName);
                //    }
                //}
                EditorGUI.EndDisabledGroup();
                //ButtonWrap end
                if (l != (k + 1) / 5 || k == StaticValue.BraidOptions.Length - 1)
                {
                    GUILayout.EndHorizontal();
                }
                k++;
            }
            ChukiHelper.UI.Separator(true);
        }
        ///////////////////////////////////////////////////////////// TODO:
        bool item2enabled = false;
        public void Toggle(object title)
        {
            SkinnedMeshRenderer SMRSource, SMRDestination;
            string TwinkString;
            string CustomCrystalsPath = "Assets/Chuki/Custom/Crystals";

            //item2enabled = !item2enabled;

            Debug.Log("item2enabled: " + title);

            //string TwinkString = KWoodHelper.DoAction.TwinkString(KWoodHelper.DoAction.CheckIfTwink(myAvatar));

            //Create Prefab to grab mesh from
            if (myChuki.GetComponent<Animator>().avatar.ToString().Contains("Twink"))
            { TwinkString = "Twink"; } else
            {
                TwinkString = "";
            }
            var asset = AssetDatabase.LoadAssetAtPath<GameObject>($"{CustomCrystalsPath}/{title}{TwinkString}.prefab");
            var SourcePrefab = PrefabUtility.InstantiatePrefab(asset) as GameObject;
            
            int i = 0;
            int j = 0;
            
            while (i < SourcePrefab.transform.childCount)
            {
                if (SourcePrefab.transform.GetChild(i).name != "Armature")
                    {
                        j = i;
                    }
                i++;
            }
            SMRSource = SourcePrefab.transform.GetChild(j).GetComponent<SkinnedMeshRenderer>();

            //Mesh Swap
            SMRDestination = myChukiCrystals.GetComponent<SkinnedMeshRenderer>();
            SMRDestination.sharedMesh = SMRSource.sharedMesh;

            //Delete Source Mesh
            DestroyImmediate(SourcePrefab);
        }
        /////////////////////////////////////////////////////////////
        void DrawCrystals() // Toggle Select for Crystals
        {
            // Read for Custom Crystals
            string CustomCrystalsPath = "Assets/Chuki/Custom/Crystals";
            string[] CustomCrystals = AssetDatabase.FindAssets("t:Prefab", new[] { CustomCrystalsPath });

        // Body BlendShapes
        myChukiBody = GameObject.Find("Body");
            SkinnedMeshRenderer BodyMeshRenderer = myChukiBody.GetComponent<SkinnedMeshRenderer>();
            Mesh mesh = BodyMeshRenderer.sharedMesh;

            // Grab Body Data for toggling crystals On
            armSize = ChukiHelper.DoAction.GetBlendShapeValue(BodyMeshRenderer, mesh, "arm_size");
            armEverlySize = ChukiHelper.DoAction.GetBlendShapeValue(BodyMeshRenderer, mesh, "arm_slimmer");
            chestSize = ChukiHelper.DoAction.GetBlendShapeValue(BodyMeshRenderer, mesh, "chest_size");
            hipSize = ChukiHelper.DoAction.GetBlendShapeValueCombo(BodyMeshRenderer, mesh, "hip_large", "hip_small");
            legSize = ChukiHelper.DoAction.GetBlendShapeValueCombo(BodyMeshRenderer, mesh, "leg_large", "leg_small");
            waistSize = ChukiHelper.DoAction.GetBlendShapeValueCombo(BodyMeshRenderer, mesh, "waist_large", "waist_small");
            breastSize = ChukiHelper.DoAction.GetBlendShapeValueCombo(BodyMeshRenderer, mesh, "breast_size_large", "breast_size_small");
            everlyHipsSize = ChukiHelper.DoAction.GetBlendShapeValue(BodyMeshRenderer, mesh, "Everly_LowerBody");
            pecsSize = ChukiHelper.DoAction.GetBlendShapeValue(BodyMeshRenderer, mesh, "Pecs");
            crotchSize = ChukiHelper.DoAction.GetBlendShapeValue(BodyMeshRenderer, mesh, "Crotch");

            myChukiCrystals = GameObject.Find("Extra/Crystals");
            if (myChukiCrystals)
            {
                ChukiHelper.UI.Separator(true);
                SkinnedMeshRenderer skinnedMeshRenderer = myChukiCrystals.GetComponent<SkinnedMeshRenderer>();
                Mesh CrystalMesh = skinnedMeshRenderer.sharedMesh;

                ///////////////////////////////////////////////////////////// TODO:
                if (GUILayout.Button($"Choose Crystals: {CrystalMesh.name}"))
                {
                    GenericMenu menu = new GenericMenu();

                    

                    foreach (string CustomCrystal in CustomCrystals)
                    {   
                        string str = AssetDatabase.GUIDToAssetPath(CustomCrystal).ToString();
                        str = str.Replace(CustomCrystalsPath, "");
                        str = str.Replace("/", "");
                        
                        string title = str.Replace(".prefab", "");

                        menu.AddItem(new GUIContent(title), item2enabled, Toggle, title);
                        
                    }

                    menu.ShowAsContext();
                }

                // Crystal Toggles
                string[] CrystalNameList = ChukiHelper.DoAction.GetCrystalList(myChukiCrystals);
                string[] CrystalSizeBlendShapes = ChukiHelper.DoAction.GetBlendShapeSizesTrunc(myChukiCrystals);
                bool[] CrystalArr = new bool[CrystalNameList.Length];
                bool[] _CrystalArr = new bool[CrystalNameList.Length];

                // Set Checkbox BOOL values based on Blendshape weights
                for (int i = 0; i < CrystalNameList.Length; i++)
                {
                    // ChujiREF: BOOL ChukiCrystalArr[i] will only equal to TRUE if the condition is met.
                    CrystalArr[i] = (skinnedMeshRenderer.GetBlendShapeWeight(i) != 100);
                    _CrystalArr[i] = (skinnedMeshRenderer.GetBlendShapeWeight(i) != 100);
                }

                ChukiHelper.UI.Separator(true);
                GUILayout.Label("Think of these as birthmarks; use discretion of how many you should have.");
                
                ChukiHelper.UI.Separator(true);
                scrollPos = EditorGUILayout.BeginScrollView(scrollPos, GUILayout.Height(position.height - 140));
                int j = 0;
                int groupCount = 0;
                string organization;
                string previousCrystal = "";
                string newCrystalName;
                foreach (string CrystalName in CrystalNameList)
                {
                    if (j == 0) // the first in CrystalNameList
                    {
                        organization = "start";
                        groupCount = 1;
                    } else if (j == CrystalNameList.Length) // the last in CrystalNameList
                    {
                        organization = "end";
                    }
                    else if (CrystalName.Contains(previousCrystal))
                    {
                        if (position.width < 550)
                        {
                            organization = "midSameGroup";
                            groupCount = groupCount + 1;
                        }
                        else if (position.width < 770 && groupCount != 1)
                        {
                            organization = "midSameGroup";
                            groupCount = groupCount + 1;
                        }
                        else
                        {
                            organization = "default";
                            groupCount = groupCount + 1;
                        }
                    } else
                    {
                        organization = "mid";
                        groupCount = 1;
                    }
                    newCrystalName = CrystalName.Replace("Left", "");
                    newCrystalName = newCrystalName.Replace("Right", "");
                    newCrystalName = newCrystalName.Replace("Center", "");
                    newCrystalName = newCrystalName.Replace("Top", "");
                    newCrystalName = newCrystalName.Replace("Bottom", "");
                    newCrystalName = newCrystalName.Replace("Ring", "");
                    previousCrystal = newCrystalName.Substring(newCrystalName.Length-4, 4);


                    switch (organization)
                    {
                        case "mid":
                            GUILayout.EndHorizontal();
                            ChukiHelper.UI.Separator(true);
                            GUILayout.BeginHorizontal();
                            break;
                        case "end":
                            GUILayout.EndHorizontal();
                            ChukiHelper.UI.Separator(true);
                            break;
                        case "start":
                            GUILayout.BeginHorizontal();
                            break;
                        case "default":
                            break;
                        case "midSameGroup":
                            GUILayout.EndHorizontal();
                            GUILayout.BeginHorizontal();
                            break;
                        default:
                            break;
                    }

                    //create the toggle boxes
                    CrystalArr[j] = EditorGUILayout.ToggleLeft(CrystalNameList[j], CrystalArr[j]);
                    if (CrystalArr[j] != _CrystalArr[j])
                    {
                        if (CrystalArr[j]) // if toggle box is checked ON
                        {
                            // Toggle Crystal_HIDE blenshape
                            ChukiBlendShape.Toggle(j, true, "Crystals");
                            _CrystalArr[j] = CrystalArr[j];

                            // Adjust SIZES Blendshapes
                            string CrystalNameReal = CrystalName.Replace(" ", "_");
                            foreach (string CrystalSize in CrystalSizeBlendShapes)
                            {
                                if (CrystalSize.Contains(CrystalNameReal))
                                {
                                    int targetBlendShape = CrystalMesh.GetBlendShapeIndex(CrystalSize);
                                    char ch = '_';
                                    int firstUnderscore = CrystalSize.IndexOf(ch);
                                    string CrystalSizeTrunc = CrystalSize.Substring(0, firstUnderscore);
                                    switch (CrystalSizeTrunc)
                                    {
                                        case "Arm":
                                            skinnedMeshRenderer.SetBlendShapeWeight(targetBlendShape, armSize);
                                            break;
                                        case "EverlyArms":
                                            skinnedMeshRenderer.SetBlendShapeWeight(targetBlendShape, armEverlySize);
                                            break;
                                        case "Chest":
                                            skinnedMeshRenderer.SetBlendShapeWeight(targetBlendShape, chestSize);
                                            break;
                                        case "Hip":
                                            if (CrystalSize.Contains("large") && hipSize >= 50)
                                            {
                                                skinnedMeshRenderer.SetBlendShapeWeight(targetBlendShape, (hipSize - 50) * 2);
                                            } else if (CrystalSize.Contains("small") && hipSize < 50)
                                            {
                                                skinnedMeshRenderer.SetBlendShapeWeight(targetBlendShape, (hipSize - 50) * -2);
                                            }
                                            break;
                                        case "Leg":
                                            if (CrystalSize.Contains("large") && legSize >= 50)
                                            {
                                                skinnedMeshRenderer.SetBlendShapeWeight(targetBlendShape, (legSize - 50) * 2);
                                            }
                                            else if (CrystalSize.Contains("small") && legSize < 50)
                                            {
                                                skinnedMeshRenderer.SetBlendShapeWeight(targetBlendShape, (legSize - 50) * -2);
                                            }
                                            break;
                                        case "Waist":
                                            if (CrystalSize.Contains("large") && waistSize >= 50)
                                            {
                                                skinnedMeshRenderer.SetBlendShapeWeight(targetBlendShape, (waistSize - 50) * 2);
                                            }
                                            else if (CrystalSize.Contains("small") && waistSize < 50)
                                            {
                                                skinnedMeshRenderer.SetBlendShapeWeight(targetBlendShape, (waistSize - 50) * -2);
                                            }
                                            //skinnedMeshRenderer.SetBlendShapeWeight(targetBlendShape, waistSize);
                                            break;
                                        case "EverlyLowerBody":
                                            skinnedMeshRenderer.SetBlendShapeWeight(targetBlendShape, everlyHipsSize);
                                            break;
                                        case "Breast":
                                            if (GameObject.Find("Extra/KWood/BaseID: BaseBreast"))
                                            {
                                                if (CrystalSize.Contains("large") && breastSize >= 50)
                                                {
                                                    Debug.Log(CrystalSize + breastSize);
                                                    skinnedMeshRenderer.SetBlendShapeWeight(targetBlendShape, (breastSize - 50) * 2);
                                                }
                                                else if (CrystalSize.Contains("small") && breastSize < 50)
                                                {
                                                    Debug.Log(CrystalSize + breastSize);
                                                    skinnedMeshRenderer.SetBlendShapeWeight(targetBlendShape, (breastSize - 50) * -2);
                                                }
                                                //skinnedMeshRenderer.SetBlendShapeWeight(targetBlendShape, breastSize);
                                            }
                                            break;
                                        case "Pecs":
                                            skinnedMeshRenderer.SetBlendShapeWeight(targetBlendShape, pecsSize);
                                            break;
                                        case "Crotch":
                                            skinnedMeshRenderer.SetBlendShapeWeight(targetBlendShape, crotchSize);
                                            break;
                                        default:
                                            break;
                                    }
                                } else
                                {
                                    //Debug.Log("No Match to : " + CrystalSize);
                                } 
                            }
                        }
                        else // Toggle box is checked OFF
                        {
                            ChukiBlendShape.Toggle(j, false, "Crystals");
                            _CrystalArr[j] = CrystalArr[j];
                        }
                    }
                    j++;
                };
                EditorGUILayout.EndScrollView();
                GUILayout.EndHorizontal();
            } else
            {
                GUILayout.Label("Chuki has no crystals or Crystals have been hidden or renamed. Please make sure your Crystals are located in My Chuki/Extra/Crystals");
            }
            EditorGUILayout.Space(10);
        }
        void DrawCrystalsColors()
        {
            ChukiHelper.UI.Separator(true);
            GUILayout.Label(
@"The colour of the crystal has no relation to the element your chuki channels, however, all crystals on any individual chuki must be the same colour.

It is preferred that the eye colour matches the crystal colour, but this is not required. Eyes can glow while channeling magic.");
            
            ChukiHelper.UI.Separator(true);
            GUILayout.Label("Select a Preset. Then change the colors for the preset.");

            foldoutAdvancedUser = EditorGUILayout.BeginFoldoutHeaderGroup(foldoutAdvancedUser, "Advanced Users");
            if (foldoutAdvancedUser)
            {
                GUILayout.Label(@"If you have a custom crystal material: drag it onto your crystals on the Scene Window.

If you would like to edit the material directly: it is located in the ""Assets/Chuki/MyChukis/"" folder.
Please note: swapping presets using this avatar creator overrides the Crystals.mat file located in this folder!
Be sure to name your Material differently.");
            }
            EditorGUILayout.EndFoldoutHeaderGroup();
            
            ChukiHelper.UI.Separator(true);
            GameObject myCrystals, SceneCrystals, myBody;
            Material test;
            myCrystals = GameObject.Find("Crystals");
            SceneCrystals = GameObject.Find("Scene_Crystals");
            myBody = GameObject.Find("Body");
            var thisRend = myCrystals.GetComponent<Renderer>().sharedMaterial;
            var sceneRend = SceneCrystals.GetComponent<Renderer>().sharedMaterial;
            var thisBody = myBody.GetComponent<Renderer>().sharedMaterial;

            string[] CrystalMaterialsList = AssetDatabase.FindAssets("t:Material", new[] { "Assets/Chuki/MatsTexture/Crystals" });

            GUILayout.BeginHorizontal();

            // Scene lights Toggle
            GameObject myLights = GameObject.Find("Directional Light");
            if (myLights.GetComponent<Light>().enabled == true)
            {
                if (GUILayout.Button("Turn off lights"))
                {
                    myLights.GetComponent<Light>().enabled = false;
                }
            } else
            {
                if (GUILayout.Button("Turn On lights"))
                {
                    myLights.GetComponent<Light>().enabled = true;
                }
            }

            // Crystal Glow Toggle
            thisRend = myCrystals.GetComponent<Renderer>().sharedMaterial;
            if (thisRend.GetFloat("_EmissionStrength1") == 0.0f)
            {
                if (GUILayout.Button("Turn on glow"))
                {
                    thisRend.SetFloat("_EmissionStrength1", 1.5f);
                    thisBody.SetFloat("_EmissionStrength1", 1.5f);
                }
            } else
            {
                if (GUILayout.Button("Turn off glow"))
                {
                    thisRend.SetFloat("_EmissionStrength1", 0.0f);
                    thisBody.SetFloat("_EmissionStrength1", 0.0f);
                }
            }
            GUILayout.EndHorizontal();

            // Crystal Presets Foldout
            //if (GUILayout.Button("Open Crystal Presets List")) {
            //    foldoutCrystalPresets = !foldoutCrystalPresets;
            //};
            if (foldoutCrystalPresets) 
            {
                if (GUILayout.Button("Close Crystal Presets List"))
                {
                    foldoutCrystalPresets = !foldoutCrystalPresets;
                };

                scrollPos1 = EditorGUILayout.BeginScrollView(scrollPos1, GUILayout.Height(200));
                foreach (string t in CrystalMaterialsList)
                {
                    string str = AssetDatabase.GUIDToAssetPath(t).ToString();
                    str = str.Replace("Assets/Chuki/MatsTexture/Crystals/", "");
                    str = str.Replace("-Poi8.1_Toon_Opaque", "");
                    str = str.Replace("-Poi8.1_Toon_Transparent", "");
                    str = str.Replace("Crystals_", "");
                    str = str.Replace(".mat", "");
                    if (GUILayout.Button(str))
                    {
                        bool copyOK = AssetDatabase.CopyAsset(AssetDatabase.GUIDToAssetPath(t).ToString(), $"Assets/Chuki/MyChukis/{myChukiName}/Crystals.mat");
                        test = AssetDatabase.LoadAssetAtPath($"Assets/Chuki/MyChukis/{myChukiName}/Crystals.mat", typeof(Material)) as Material;
                        myCrystals.GetComponent<Renderer>().sharedMaterial = test;
                        SceneCrystals.GetComponent<Renderer>().sharedMaterial = test;

                        // Refresh variables since we altered the source file
                        thisRend = myCrystals.GetComponent<Renderer>().sharedMaterial;
                        sceneRend = SceneCrystals.GetComponent<Renderer>().sharedMaterial;

                        bool saveOK = EditorSceneManager.SaveScene(EditorSceneManager.GetActiveScene(), $"Assets/Chuki/MyChukis/{EditorSceneManager.GetActiveScene().name}.unity");

                        // Unlock Material
                        // TODO Figure out how to unlock Material.
                        //Debug.Log(thisRend.GetFloat("_ShaderOptimizerEnabled"));
                        //thisRend.SetFloat("_ShaderOptimizerEnabled", 0.0f);
                        //Debug.Log(thisRend.GetFloat("_ShaderOptimizerEnabled"));
                    }
                
                }
                EditorGUILayout.EndScrollView();
            } else
            {
                if (GUILayout.Button("Open Crystal Presets List"))
                {
                    foldoutCrystalPresets = !foldoutCrystalPresets;
                };
            }

            // Color Sliders. Sliders
            ChukiHelper.UI.Separator(true);
            scrollPos = EditorGUILayout.BeginScrollView(scrollPos, GUILayout.Height(325));
            CrystalThemeColor1 = EditorGUILayout.Slider("Base Color", CrystalThemeColor1, 0.0f, 1.0f);
            CrystalThemeSat1 = EditorGUILayout.Slider("Saturation", CrystalThemeSat1, -1.0f, 1.0f);
            CrystalThemeVal1 = EditorGUILayout.Slider("Brightness", CrystalThemeVal1, -1.0f, 1.0f);
            
            ChukiHelper.UI.Separator(true);
            CrystalThemeColor2 = EditorGUILayout.Slider("Color 2", CrystalThemeColor2, 0.0f, 1.0f);
            CrystalThemeSat2 = EditorGUILayout.Slider("Saturation", CrystalThemeSat2, -1.0f, 1.0f);
            CrystalThemeVal2 = EditorGUILayout.Slider("Brightness", CrystalThemeVal2, -1.0f, 1.0f);
            
            ChukiHelper.UI.Separator(true);
            CrystalThemeColor3 = EditorGUILayout.Slider("Color 3", CrystalThemeColor3, 0.0f, 1.0f);
            CrystalThemeSat3 = EditorGUILayout.Slider("Saturation", CrystalThemeSat3, -1.0f, 1.0f);
            CrystalThemeVal3 = EditorGUILayout.Slider("Brightness", CrystalThemeVal3, -1.0f, 1.0f);
            
            ChukiHelper.UI.Separator(true);
            CrystalThemeColor4 = EditorGUILayout.Slider("Color 4", CrystalThemeColor4, 0.0f, 1.0f);
            CrystalThemeSat4 = EditorGUILayout.Slider("Saturation", CrystalThemeSat4, -1.0f, 1.0f);
            CrystalThemeVal4 = EditorGUILayout.Slider("Brightness", CrystalThemeVal4, -1.0f, 1.0f);
            
            ChukiHelper.UI.Separator(true);
            CrystalNormals = EditorGUILayout.Slider("Smoothness", CrystalNormals, 0.0f, 1.0f);
            EditorGUILayout.EndScrollView();

            // Color Sliders. Set values to those of slider.
            thisRend.SetFloat("_GlobalThemeHue0", CrystalThemeColor1);
            thisRend.SetFloat("_GlobalThemeHue1", CrystalThemeColor2);
            thisRend.SetFloat("_GlobalThemeHue2", CrystalThemeColor3);
            thisRend.SetFloat("_GlobalThemeHue3", CrystalThemeColor4);
            thisRend.SetFloat("_GlobalThemeSaturation0", CrystalThemeSat1);
            thisRend.SetFloat("_GlobalThemeSaturation1", CrystalThemeSat2);
            thisRend.SetFloat("_GlobalThemeSaturation2", CrystalThemeSat3);
            thisRend.SetFloat("_GlobalThemeSaturation3", CrystalThemeSat4);
            thisRend.SetFloat("_GlobalThemeValue0", CrystalThemeVal1);
            thisRend.SetFloat("_GlobalThemeValue1", CrystalThemeVal2);
            thisRend.SetFloat("_GlobalThemeValue2", CrystalThemeVal3);
            thisRend.SetFloat("_GlobalThemeValue3", CrystalThemeVal4);
            thisRend.SetFloat("_NormalCorrectAmount", CrystalNormals);
            sceneRend.SetFloat("_GlobalThemeHue0", CrystalThemeColor1);
            sceneRend.SetFloat("_GlobalThemeHue1", CrystalThemeColor2);
            sceneRend.SetFloat("_GlobalThemeHue2", CrystalThemeColor3);
            sceneRend.SetFloat("_GlobalThemeHue3", CrystalThemeColor4);
            sceneRend.SetFloat("_GlobalThemeSaturation0", CrystalThemeSat1);
            sceneRend.SetFloat("_GlobalThemeSaturation1", CrystalThemeSat2);
            sceneRend.SetFloat("_GlobalThemeSaturation2", CrystalThemeSat3);
            sceneRend.SetFloat("_GlobalThemeSaturation3", CrystalThemeSat4);
            sceneRend.SetFloat("_GlobalThemeValue0", CrystalThemeVal1);
            sceneRend.SetFloat("_GlobalThemeValue1", CrystalThemeVal2);
            sceneRend.SetFloat("_GlobalThemeValue2", CrystalThemeVal3);
            sceneRend.SetFloat("_GlobalThemeValue3", CrystalThemeVal4);
            sceneRend.SetFloat("_NormalCorrectAmount", CrystalNormals);
        }
        void DrawBodyMaterial()
        {
            ChukiHelper.UI.Separator(true);
            GUILayout.Label(@"The chuki features both an asymmetrical (UV0) and a symmetrical (UV1) UV map. Follow along with the YouTube tutorial for details.");
            GUILayout.Label("ATTENTION: if you are migrating from 1.3.1 there were some small changes to the texture file. Please read the included document for instructions or follow along with the YouTube tutorial for details.");
            
            if (GUILayout.Button("YouTube Tutorial for Image Editors"))
            {
                Application.OpenURL("https://www.youtube.com/watch?v=LaZyDyMnkYg&list=PLb98qHjhIvHdmc-8-v-ue9mSjnwG5k-zD&index=3");
            }
            EditorGUI.BeginDisabledGroup(true);
            if (GUILayout.Button("In Progress: YouTube Tutorial for Substance Painter"))
            {
                Application.OpenURL("https://www.youtube.com/");
            }
            EditorGUI.EndDisabledGroup();
            
            ChukiHelper.UI.Separator(true);

            //TODO: Open import asset window for easy importing.
            //if (GUILayout.Button("Import Body.PNG"))
            //{
            //    AssetDatabase.ImportAsset($"Assets/Chuki/MyChukis/{myChukiName}");
            //}
            GUILayout.Label(@"1. Bring in your Body.PNG and place it in the folder named after your Chuki inside the My Chukis folder.
2. Unlock the Poiyomi Shader.
3. Drag your Body.PNG into the Texture Box located underneath Color & Alpha.
4. Lock the Poiyomi Shader.");
            if (GUILayout.Button("Select Body Material in Project Window"))
            {
                Selection.activeObject = AssetDatabase.LoadMainAssetAtPath($"Assets/Chuki/MyChukis/{myChukiName}/Body-Poi8.1_Toon_Opaque.mat");
            }
            //TODO Bug in GUI Skin? 
            //bodyTexture = (Texture2D)EditorGUILayout.ObjectField("Body Texture", bodyTexture, typeof(Texture2D), false);
            
            GUILayout.Label("");
        }
        void DrawExtras()
        {
            ChukiHelper.UI.Separator(true);
            // EARRINGS
            GUILayout.Label("Earrings", EditorStyles.boldLabel);
            GUILayout.BeginHorizontal();
            if (GUILayout.Button("Gauge Earring Right")) {
                GameObject obj;
                if (!chukiAccessoriesArr[0]) //Gauge Earring Right
                {
                    //Hide Crystal First
                    obj = GameObject.Find("Crystals");
                    ChukiHelper.DoAction.SetBlendShapeSize(obj, "GaugeR_HIDE", false);

                    // Show Earring
                    obj = GameObject.Find("Accessories");
                    ChukiHelper.DoAction.SetBlendShapeSize(obj, "GaugeR_HIDE", true);
                    MatScript.ChangeUDIM("GaugeRight", true); // go to BODY MATERIAL, change Special FX, UV Tile Discard, V(3,0) ON AND V(3,3) OFF
                    chukiAccessoriesArr[0] = true;
                    chukiAccessoriesArr[5] = false;
                }
                else
                {
                    obj = GameObject.Find("Accessories");
                    ChukiHelper.DoAction.SetBlendShapeSize(obj, "GaugeR_HIDE", false);
                    MatScript.ChangeUDIM("GaugeRight", false); // go to BODY MATERIAL, change Special FX, UV Tile Discard, V(3,0) ON AND V(3,3) OFF
                    chukiAccessoriesArr[0] = false;
                }
            }
            if (GUILayout.Button("Gauge Earring Left"))
            {
                GameObject obj;
                if (!chukiAccessoriesArr[1]) //Gauge Earring Right
                {
                    //Hide Crystal First
                    obj = GameObject.Find("Crystals");
                    ChukiHelper.DoAction.SetBlendShapeSize(obj, "GaugeL_HIDE", false);

                    // Show Earring
                    obj = GameObject.Find("Accessories");
                    ChukiHelper.DoAction.SetBlendShapeSize(obj, "GaugeL_HIDE", true);
                    MatScript.ChangeUDIM("GaugeLeft", true); // go to BODY MATERIAL, change Special FX, UV Tile Discard, V(3,0) ON AND V(3,3) OFF
                    chukiAccessoriesArr[1] = true;
                    chukiAccessoriesArr[4] = false;
                }
                else
                {
                    obj = GameObject.Find("Accessories");
                    ChukiHelper.DoAction.SetBlendShapeSize(obj, "GaugeL_HIDE", false);
                    MatScript.ChangeUDIM("GaugeLeft", false); // go to BODY MATERIAL, change Special FX, UV Tile Discard, V(3,0) ON AND V(3,3) OFF
                    chukiAccessoriesArr[1] = false;
                }
            }

            GUILayout.EndHorizontal();
            GUILayout.BeginHorizontal();
            if (GUILayout.Button("Gauge Crystal Right"))
            {
                GameObject obj;
                if (!chukiAccessoriesArr[5]) //Gauge Earring Right
                {
                    //hide Earring first
                    obj = GameObject.Find("Accessories");
                    ChukiHelper.DoAction.SetBlendShapeSize(obj, "GaugeR_HIDE", false);
                    MatScript.ChangeUDIM("GaugeRight", false); // go to BODY MATERIAL, change Special FX, UV Tile Discard, V(3,0) ON AND V(3,3) OFF

                    //Show Crystal
                    obj = GameObject.Find("Crystals");
                    ChukiHelper.DoAction.SetBlendShapeSize(obj, "GaugeR_HIDE", true);
                    chukiAccessoriesArr[5] = true;
                    chukiAccessoriesArr[0] = false;
                }
                else
                {
                    obj = GameObject.Find("Crystals");
                    ChukiHelper.DoAction.SetBlendShapeSize(obj, "GaugeR_HIDE", false);
                    chukiAccessoriesArr[5] = false;
                }
            }
            if (GUILayout.Button("Gauge Crystal Left"))
            {
                GameObject obj;
                if (!chukiAccessoriesArr[4]) //Gauge Crystal Right
                {
                    //hide Earring first
                    obj = GameObject.Find("Accessories");
                    ChukiHelper.DoAction.SetBlendShapeSize(obj, "GaugeL_HIDE", false);
                    MatScript.ChangeUDIM("GaugeLeft", false); // go to BODY MATERIAL, change Special FX, UV Tile Discard, V(3,0) ON AND V(3,3) OFF

                    //Show Crystal
                    obj = GameObject.Find("Crystals");
                    ChukiHelper.DoAction.SetBlendShapeSize(obj, "GaugeL_HIDE", true);
                    chukiAccessoriesArr[4] = true;
                    chukiAccessoriesArr[1] = false;
                }
                else
                {
                    obj = GameObject.Find("Crystals");
                    ChukiHelper.DoAction.SetBlendShapeSize(obj, "GaugeL_HIDE", false);
                    chukiAccessoriesArr[4] = false;
                }
            }
            GUILayout.EndHorizontal();
            HandleEarholes();

            ChukiHelper.UI.Separator(true);

            // GLASSES
            GUILayout.Label("Glasses", EditorStyles.boldLabel);
            GUILayout.Label(chukiGlasses[chukiGlassesIndex]);
            GUILayout.BeginHorizontal();

            EditorGUI.BeginDisabledGroup(chukiGlassesIndex <= 0);
            {
                if (GUILayout.Button("Previous", GUILayout.Height(25)))
                {
                    if (chukiGlassesIndex > 0)
                    {
                        chukiGlassesIndex = --chukiGlassesIndex;
                    }
                    ChukiGlassesSwap(chukiNewLenseStatus);
                }
            }
            EditorGUI.EndDisabledGroup();
            
            EditorGUI.BeginDisabledGroup(chukiGlassesIndex >= (chukiGlasses.Length - 1));
            { 
                if (GUILayout.Button("Next", GUILayout.Height(25)))
                {
                    if (chukiGlassesIndex < chukiGlassesMaxIndex)
                    {
                        chukiGlassesIndex = ++chukiGlassesIndex;
                        if (chukiGlassesIndex == 1) { ChukiLenseQuestSwap(); }
                    }
                    ChukiGlassesSwap(chukiNewLenseStatus);
                }
            }
            EditorGUI.EndDisabledGroup();

            GUILayout.EndHorizontal();
            if (chukiGlassesIndex > 0)
            {
                if (GUILayout.Button("Toggle Classic Lenses"))
                {
                    ChukiGlassLense();
                }

                if (GUILayout.Button("Toggle Optimized Lenses"))
                {
                    ChukiLenseQuestSwap();
                }
                if (chukiGlassesIndex == 2)
                {
                    GUILayout.Label(
@"Axtii Optimized Lenses require a custom animation, to edit this:
1. Go to the Project Window.
2. Find your FX Controller located in Assets/Chuki/Movement/Controllers/
3. Double click it to open the Animator Window.
4. In the Layers Section scroll down to the layer: Glasses Tilt. Click on it.
5. Click on the Orange Node labeled: Glasses Shine.
6. In the Inspector window. Select the Motion field change it to: GlassesShineAxtii.");
                }
            }
            ChukiHelper.UI.Separator(true);

            // WRISTBAND
            Texture2D WristbandTexture;
            GUILayout.Label($"Wristband: {chukiWristband[chukiWristbandIndex]}");
            int i = 0;
            foreach (string wristband in chukiWristband) {
                if (i == 0) { GUILayout.BeginHorizontal(); } // begin horizontal only on the 0th element.
                if (chukiWristbandIndex == i) // load a different image depending if wristband is active
                {
                    WristbandTexture = AssetDatabase.LoadAssetAtPath<Texture2D>($"Assets/Chuki/Editor/Resources/Wristband/{wristband}_selected.png");
                } else
                {
                    WristbandTexture = AssetDatabase.LoadAssetAtPath<Texture2D>($"Assets/Chuki/Editor/Resources/Wristband/{wristband}.png");
                }
                
                if (GUILayout.Button(WristbandTexture, "TileButton", GUILayout.MaxWidth(75))) // button to change visible wristband
                {
                    chukiWristbandIndex = i;
                    ChukiWristbandSwap();
                };
                if (i == 4) { GUILayout.EndHorizontal(); } // end horizontal only on the fourth element.
                i++;
            }

            ChukiHelper.UI.Separator(true);

            // PawPads
            GUILayout.Label("Paw Pads", EditorStyles.boldLabel);
            GUILayout.BeginHorizontal();
            if (GUILayout.Button("Normal")) {
                GameObject obj;
                if (!chukiAccessoriesArr[6]) //Toggle ON
                {
                    //Hide Crystal First
                    obj = GameObject.Find("Crystals");
                    ChukiHelper.DoAction.SetBlendShapeSize(obj, "Garbanzos_HIDE", false);
                    //ChukiBlendShape.Toggle(StaticValue.DictCrystal["Garbanzos_HIDE"], false, "Crystals");

                    // Show Paw Pads
                    obj = GameObject.Find("Body");
                    ChukiHelper.DoAction.SetBlendShapeSize(obj, "Garbanzos_HIDE", true);
                    //ChukiBlendShape.Toggle(StaticValue.DictBody["Garbanzos_HIDE"], true, "Body");
                    MatScript.ChangeUDIM("Garbanzos_HIDE", true); // go to BODY MATERIAL, change Special FX, UV Tile Discard, V(3,0) ON AND V(3,3) OFF
                    chukiAccessoriesArr[6] = true;
                    chukiAccessoriesArr[7] = false;
                }
                else // Toggle OFF
                {
                    obj = GameObject.Find("Body");
                    ChukiHelper.DoAction.SetBlendShapeSize(obj, "Garbanzos_HIDE", false);
                    //ChukiBlendShape.Toggle(StaticValue.DictBody["Garbanzos_HIDE"], false, "Body");
                    MatScript.ChangeUDIM("Garbanzos_HIDE", false); // go to BODY MATERIAL, change Special FX, UV Tile Discard, V(3,0) ON AND V(3,3) OFF
                    chukiAccessoriesArr[6] = false;
                }
            }
            if (GUILayout.Button("Crystal"))
            {
                GameObject obj;
                if (!chukiAccessoriesArr[7]) //Toggle ON
                {
                    //Hide Normal First
                    obj = GameObject.Find("Body");
                    ChukiHelper.DoAction.SetBlendShapeSize(obj, "Garbanzos_HIDE", false);
                    //ChukiBlendShape.Toggle(StaticValue.DictBody["Garbanzos_HIDE"], false, "Body");

                    // Show Paw Pads
                    obj = GameObject.Find("Crystals");
                    ChukiHelper.DoAction.SetBlendShapeSize(obj, "Garbanzos_HIDE", true);
                    //ChukiBlendShape.Toggle(StaticValue.DictCrystal["Garbanzos_HIDE"], true, "Crystals");
                    MatScript.ChangeUDIM("Garbanzos_HIDE", true); // go to BODY MATERIAL, change Special FX, UV Tile Discard, V(3,0) ON AND V(3,3) OFF
                    chukiAccessoriesArr[6] = false;
                    chukiAccessoriesArr[7] = true;
                }
                else // Toggle OFF
                {
                    obj = GameObject.Find("Crystals");
                    ChukiHelper.DoAction.SetBlendShapeSize(obj, "Garbanzos_HIDE", false);
                    //ChukiBlendShape.Toggle(StaticValue.DictCrystal["Garbanzos_HIDE"], false, "Crystals");
                    MatScript.ChangeUDIM("GaugeLeft", false); // go to BODY MATERIAL, change Special FX, UV Tile Discard, V(3,0) ON AND V(3,3) OFF
                    chukiAccessoriesArr[7] = false;
                }
            }

            GUILayout.EndHorizontal();
        }
        void DrawExpressionSets()//    // if only I could automate this ;u; ;u;
        {
            Texture2D IconTexture;
            ChukiHelper.UI.Separator(true);
            GUILayout.Label("The chuki features several expression sets. Select your Expression Set below:");
            ChukiHelper.UI.Separator(true);
            GUILayout.BeginHorizontal();
            EditorGUI.BeginDisabledGroup(ExpressionExplanation <= 0);
            {
                if (GUILayout.Button("Previous"))
                { ExpressionExplanation = --ExpressionExplanation; }
            }
            EditorGUI.EndDisabledGroup();

            EditorGUI.BeginDisabledGroup(ExpressionExplanation >= StaticValue.ExpressionList.Length - 1);
            {
                if (GUILayout.Button("Next"))
                { ExpressionExplanation = ++ExpressionExplanation; }
            }
            EditorGUI.EndDisabledGroup();
            GUILayout.EndHorizontal();
            string ExpressionString;
            switch (ExpressionExplanation)
            {
                case 3:
                    ExpressionString = StaticValue.ExpressionList[ExpressionExplanation];
                    IconTexture = AssetDatabase.LoadAssetAtPath<Texture2D>($"Assets/Chuki/Editor/Resources/ExpressionSets/{ExpressionString}.png");
                    ChangeExpressionSet(ExpressionString);
                    GUILayout.Label(ExpressionString);
                    GUILayout.Label(IconTexture);
                    ChukiHelper.UI.Separator(true);
                    GUILayout.Label("Advanced Users: Bratty has it's own custom Blink driver in the FX Controller");
                    break;
                case 4:
                    ExpressionString = StaticValue.ExpressionList[ExpressionExplanation];
                    IconTexture = AssetDatabase.LoadAssetAtPath<Texture2D>($"Assets/Chuki/Editor/Resources/ExpressionSets/{ExpressionString}.png");
                    ChangeExpressionSet(ExpressionString);
                    GUILayout.Label("Closed Eyes");
                    GUILayout.Label(IconTexture);
                    ChukiHelper.UI.Separator(true);
                    break;
                case 7:
                    ExpressionString = StaticValue.ExpressionList[ExpressionExplanation];
                    IconTexture = AssetDatabase.LoadAssetAtPath<Texture2D>($"Assets/Chuki/Editor/Resources/ExpressionSets/{ExpressionString}.png");
                    ChangeExpressionSet(ExpressionString);
                    GUILayout.Label(ExpressionString);
                    GUILayout.Label(IconTexture);
                    ChukiHelper.UI.Separator(true);
                    GUILayout.Label("Advanced Users: Sleepy has it's own custom Blink driver in the FX Controller");
                    break;
                default:
                    ExpressionString = StaticValue.ExpressionList[ExpressionExplanation];
                    IconTexture = AssetDatabase.LoadAssetAtPath<Texture2D>($"Assets/Chuki/Editor/Resources/ExpressionSets/{ExpressionString}.png");
                    ChangeExpressionSet(ExpressionString);
                    GUILayout.Label(ExpressionString);
                    GUILayout.Label(IconTexture);
                    ChukiHelper.UI.Separator(true);
                    break;
            }
        }
        void DrawEarFlop()//    // if only I could automate this ;u; ;u;
        {
            ChukiHelper.UI.Separator(true);
            GUILayout.Label("Optional: If you set your Ear Flop above 0.5, you can limit the ear animations behavior.");
            ChukiHelper.UI.Separator(true);
            GUILayout.Label(
@"1: In the Hierachy Window, click on ""My Chuki"".
2: In the Inspector Window, find the VRC Avatar Descriptor.
3: Find the Playable Layers, FX Controller section.
4: Double Click on your FX_Expression controller, this will open the Animator Window.
5: Click on the Parameters Tab.
6: Find the Parameter Labeled ""EarFlop"", uncheck it.");
        }
        void DrawChukiGenerate()
        {
            EditorGUILayout.Space(10);
            if (GUILayout.Button("Customize Chuki", GUILayout.Height(50)))
            {
                ///////////////
                // really we can rename the object instead of deleting it and replacing it.
                ///////////////
                GameObject tmpChukiObject;
                tmpChukiObject = GameObject.Find("My Chuki");
                if (tmpChukiObject)
                {
                    //DestroyImmediate(tmpChukiObject, false);
                
                }
                chukiGenerated = string.Empty;
                //chukiGenerated += chukiHairOptions[chukiHairIndex];
                if (chukiBraid == true) { chukiGenerated += "Braid"; }
                //if (chukiBreast == true) { chukiGenerated += "Breast"; }
                ChukiInstallerAssets.AddNewPrefab(chukiGenerated, "My Chuki");
                //if (chukiBreast == true)
                //{
                //    ChukiBlendShape.ChangeSingle(StaticValue.DictCrystal["Chest Center Breast 0"], 100f, "Crystals");
                //}
                //else
                //{ // disable objects when no breast present
                //    tmpChukiObject = GameObject.Find("BreastRoot");
                //    if (tmpChukiObject)
                //    {
                //        tmpChukiObject.SetActive(false);
                //    }
                //    tmpChukiObject = GameObject.Find("Breast.Script");
                //    if (tmpChukiObject)
                //    {
                //        tmpChukiObject.SetActive(false);
                //    }
                //}
                if (chukiBraid == false)
                { // Disable objects when no braid Present
                    tmpChukiObject = GameObject.Find("Neck.Braid");
                    if (tmpChukiObject)
                    {
                        tmpChukiObject.transform.localScale = new Vector3(0.1f, 0.1f, 0.1f);
                        tmpChukiObject.transform.position = new Vector3(0f, 0.0976f, 0.0081f);
                        tmpChukiObject.transform.localRotation = Quaternion.Euler(-90f, 0, 0);
                        tmpChukiObject.SetActive(false);
                    }
                    tmpChukiObject = GameObject.Find("Tail.2.Collider");
                    tmpChukiObject.SetActive(false);
                    tmpChukiObject = GameObject.Find("Tail.3.Collider");
                    tmpChukiObject.SetActive(false);
                    tmpChukiObject = GameObject.Find("Tail.4.Collider");
                    tmpChukiObject.SetActive(false);
                    tmpChukiObject = GameObject.Find("Hair.Braid.Script");
                    if (tmpChukiObject)
                    {
                        tmpChukiObject.SetActive(false);
                    }
                }
                chukiGenerated = string.Empty;

            }
            EditorGUILayout.Space(10);
        }
        void DrawHeight()
        {
            ChukiHelper.UI.Separator(true);
            GUILayout.Label("Height measurement is taken from the top of the head.");

            // Height changes depending on Race, since Race changes Armature size.
            double chukiRaceHeight;
            switch (QiuRace)
            {
                case true:
                    GUILayout.Label("Recommended height: 100cm to 135 cm");
                    chukiRaceHeight = 0.8;
                    break;
                default:
                    GUILayout.Label("Recommended height: 135cm to 175 cm");
                    chukiRaceHeight = 1.0;
                    break;
            }

            // Grab live measurements
            myChuki = GameObject.Find("My Chuki");
            ChukiUnityUnits = myChuki.transform.localScale;
            // Convert Unity Units to Metric and Imperial
            /*
            ChujiRef: Fun fact! In C#, division takes about 6x as long to process than multiplication.
            So you could, for instance, replace "Centimeters / 2.54" with "Centimeters * 0.3937"
            Also, if it helps for math, % ("modulo") gives you the remainder of a division.
            So you could also write it like:
             */

            double Centimeters = (((ChukiUnityUnits[0] * 1.55) * 100) * chukiRaceHeight);
            int totalInches = (int) Mathf.Floor((float)(Centimeters * 0.3937));
            int inches = totalInches % 12;
            int feet = (totalInches - inches) / 12;
            //double Feet = (Centimeters / 2.54) / 12;
            //int iFeet = (int)Feet;
            //double inches = (Feet - (double)iFeet) * 12;
            string chukiHeightFTString = feet.ToString("F1").Remove(feet.ToString("F1").Length - 2);
            string chukiHeightINString = inches.ToString("F1").Remove(inches.ToString("F1").Length - 2);
            ChukiHelper.UI.Separator(true);

            GUILayout.BeginHorizontal();
            GUILayout.Label($"{Centimeters.ToString("F0")} centimetres");
            GUILayout.Label($"{chukiHeightFTString} ft, {chukiHeightINString} in.");
            GUILayout.EndHorizontal();

            _tempAvatarDescriptor = myChuki.GetComponent<VRC_AvatarDescriptor>();

            ChukiHelper.UI.Separator(true);
            // Height Slider
            EditorGUI.BeginDisabledGroup(useCustomHeight);
            GUILayout.BeginHorizontal();

            GUILayout.Label("Scale");
            chukiHeightUnityFloat = EditorGUILayout.Slider(chukiHeightUnityFloat, 0.25f, 1.5f);
            string i = chukiHeightUnityFloat.ToString("F2");
            if (!useCustomHeight)
            {
                ChukiCustomizer.RaceHeight(i);
                MoveViewpointToScale(_tempAvatarDescriptor, chukiHeightUnityFloat);
                //AlignViewToObject(GameObject.Find("Camera.Height"), true);
            }

            GUILayout.EndHorizontal();
            EditorGUI.EndDisabledGroup();

            ChukiHelper.UI.Separator(true);
            // Toggle button to enable custom height
            useCustomHeight = GUILayout.Toggle(useCustomHeight, " Use Custom Height (Unity Units)");

            // Height Input
            EditorGUI.BeginDisabledGroup(!useCustomHeight);
            GUILayout.BeginHorizontal();

            chukiHeightUnity = GUILayout.TextField(chukiHeightUnity, 6, GUILayout.MaxWidth(60));

            GUILayout.Space(50);
            //GUILayout.Label("Unity Units");
            GUILayout.EndHorizontal();
            if (GUILayout.Button("Update Height", GUILayout.Height(25)))
            {
                ChukiCustomizer.RaceHeight(chukiHeightUnity);
                MoveViewpointToScale(_tempAvatarDescriptor, float.Parse(chukiHeightUnity));
                //myCamera = GameObject.Find("Camera.Height");
                //myCamera.transform.localPosition = new Vector3(0.01041685f, (0.35f * float.Parse(chukiHeightUnity)), 2.168841f);
                //AlignViewToObject(GameObject.Find("Camera.Height"), true);
            }
            EditorGUI.EndDisabledGroup();
            ChukiHelper.UI.Separator(true);
            GUILayout.Label(
@"Scaler will automatically adjust your view position to the recommended setting. HOWEVER, entering playmode may revert it, to set it:
1: In the Hierachy Window, click on ""My Chuki"".
2: In the Inspector Window, find the VRC Avatar Descriptor.
3: Find the View Position section.
4: Click the ""Edit"" Button, this will turn it green.
5: Click ""Return"".");
        }
        void DrawChukiBodyMods()
        {
            ChukiHelper.UI.Separator(true);
            GUILayout.Label("Arms");
            armSize = EditorGUILayout.Slider(armSize, 0.0f, 100.0f);
                ChukiBlendShape.ChangeSingle(StaticValue.DictBody["Arm_Size"], armSize, "Body");
            if (armSize != _armSize)
            {
                ChukiHelper.DoAction.ChangeBlendShapeSizes(myChukiCrystals, "Arm", armSize);
                _armSize = armSize;
            }
            GUILayout.Space(10);

            GUILayout.Label("Arms Everly (Slimmer)");
                armEverlySize = EditorGUILayout.Slider(armEverlySize, 0.0f, 100.0f);
            
                ChukiBlendShape.ChangeSingle(StaticValue.DictBody["Arm_Slimmer"], armEverlySize, "Body");
            if (armEverlySize != _armEverlySize)
            {
                ChukiHelper.DoAction.ChangeBlendShapeSizes(myChukiCrystals, "EverlyArms", armEverlySize);
                _armEverlySize = armEverlySize;
            }
            GUILayout.Space(10);

            GUILayout.Label("Hands");
            handSize = EditorGUILayout.Slider(handSize, 0.9f, 1.00f);
                scaleHand = new Vector3(handSize, handSize, handSize);
                armatureHandL = GameObject.Find("Hand.L");
                armatureHandL.transform.localScale = scaleHand;
                armatureHandR = GameObject.Find("Hand.R");
                armatureHandR.transform.localScale = scaleHand;

            ChukiHelper.UI.Separator(true);
            GUILayout.Label("Chest");
            // TODO: Need to change this so that we read these tags at initialization.
            chestSize = EditorGUILayout.Slider(chestSize, 0.0f, 100.0f);
                ChukiBlendShape.ChangeSingle(StaticValue.DictBody["Chest_Size"], chestSize, "Body");
                ChukiBlendShape.ChangeCombo(StaticValue.DictBody["Breast_Size_Large"], chestSize, "Body");
            if (chestSize != _chestSize)
            {
                ChukiHelper.DoAction.ChangeBlendShapeSizes(myChukiCrystals, "Chest", chestSize);
                _chestSize = chestSize;
            }
            // TODO: Change the Breast.Script values
            BaseID = GameObject.Find("BaseID: BaseBreast");
                if (BaseID) // Base model has Breasts
                {
                    AdjustVRCBreastPhsyBone(chestSize);
                    ChukiHelper.DoAction.ChangeBlendShapeSizes(myChukiCrystals, "Breast", chestSize);
                }
                
            GUILayout.Space(10);
            BaseID = GameObject.Find("BaseID: Base");
            if (BaseID)
                {
                GUILayout.Label("Pecs");
                pecsSize = EditorGUILayout.Slider(pecsSize, 0.0f, 100.0f);
                    ChukiBlendShape.ChangeSingle(StaticValue.DictBody["Pecs"], pecsSize, "Body");
                    GUILayout.Space(10);
                }

            GUILayout.Label("Hips");
            hipSize = EditorGUILayout.Slider(hipSize, 0.0f, 100.0f);
                ChukiBlendShape.ChangeCombo(StaticValue.DictBody["Hip_Large"], hipSize, "Body");
                if (hipSize != _hipSize)
                {
                    ChukiHelper.DoAction.ChangeBlendShapeSizes(myChukiCrystals, "Hip", hipSize);
                    _hipSize = hipSize;
                }
            GUILayout.Space(10);

            GUILayout.Label("Waist");
            waistSize = EditorGUILayout.Slider(waistSize, 0.0f, 100.0f);
                ChukiBlendShape.ChangeCombo(StaticValue.DictBody["Waist_Large"], waistSize, "Body");
            if (waistSize != _waistSize)
            {
                ChukiHelper.DoAction.ChangeBlendShapeSizes(myChukiCrystals, "Waist", waistSize);
                _waistSize = waistSize;
            }
            GUILayout.Space(10);

            GUILayout.Label("Everly Hips");
            everlyHipsSize = EditorGUILayout.Slider(everlyHipsSize, 0.0f, 100.0f);
            ChukiBlendShape.ChangeSingle(StaticValue.DictBody["Everly_LowerBody"], everlyHipsSize, "Body");
            if (everlyHipsSize != _everlyHipsSize)
            {
                ChukiHelper.DoAction.ChangeBlendShapeSizes(myChukiCrystals, "EverlyLowerBody", everlyHipsSize);
                _everlyHipsSize = everlyHipsSize;
            }
            GUILayout.Space(10);

            GUILayout.Label("Crotch");
            crotchSize = EditorGUILayout.Slider(crotchSize, 0.0f, 100.0f);
            ChukiBlendShape.ChangeSingle(StaticValue.DictBody["Crotch"], crotchSize, "Body");
            if (crotchSize != _crotchSize)
            {
                ChukiHelper.DoAction.ChangeBlendShapeSizes(myChukiCrystals, "Crotch", crotchSize);
                _crotchSize = crotchSize;
            }

            GUILayout.Space(10);

            ChukiHelper.UI.Separator(true);

            GUILayout.Label("Legs");
            legSize = EditorGUILayout.Slider(legSize, 0.0f, 100.0f);
                ChukiBlendShape.ChangeCombo(StaticValue.DictBody["Leg_Large"], legSize, "Body");
            if (legSize != _legSize)
            {
                ChukiHelper.DoAction.ChangeBlendShapeSizes(myChukiCrystals, "Leg", legSize);
                _legSize = legSize;
            }
            GUILayout.Space(10);


            GUILayout.Label("Tail");
            tailSize = EditorGUILayout.Slider(tailSize, 0.09f, 0.19f);
                posTail = new Vector3(0, tailSize, 0);
                armatureTailRoot = GameObject.Find("TailRoot");
                armatureTailRoot.transform.localPosition = new Vector3(0f, -0.13f, -.12f);

            StaticValue.SetupTail(false);

            foreach (var t in StaticValue.armatureTailSections)
                {
                    t.TailObject.transform.localPosition = posTail;
                }

                AdjustVRCBellyReceiverPosition(waistSize, everlyHipsSize);


                EditorGUILayout.Space(20);
        }
        void DrawChukiHeadMods()
        {
            //Hair Section
            ChukiHelper.UI.Separator(true);

            armatureHairFat = GameObject.Find("Hair.Fat.Root");
            armatureHairSlim = GameObject.Find("Hair.Slim.Root");
            armatureHairNeck = GameObject.Find("Hair.Neck.Root");
            armatureHairBraid = GameObject.Find("Ponytail");

            scaleHair = new Vector3(hairSize, hairSize, hairSize);
            if (armatureHairFat && armatureHairFat.transform.childCount != 0)
            {
                GUILayout.Label("Hair Size (Thick Strands)");
                hairSizeFat = EditorGUILayout.Slider(hairSizeFat, 0.9f, 1.4f);
                scaleHairFat = new Vector3(hairSizeFat, hairSizeFat, hairSizeFat);
                armatureHairFat.transform.GetChild(armatureHairFat.transform.childCount - 1);
                GUILayout.Space(10);
                foreach (Transform child in armatureHairFat.transform)
                {
                    child.transform.localScale = scaleHairFat;
                }
                GUILayout.Space(10);
            }
            if (armatureHairSlim && armatureHairSlim.transform.childCount != 0)
            {
                GUILayout.Label("Hair Size (Thin Strands)");
                hairSizeSlim = EditorGUILayout.Slider(hairSizeSlim, 0.9f, 1.4f);
                scaleHairSlim = new Vector3(hairSizeSlim, hairSizeSlim, hairSizeSlim);
                armatureHairSlim.transform.GetChild(armatureHairSlim.transform.childCount - 1);
                GUILayout.Space(10);
                foreach (Transform child in armatureHairSlim.transform)
                {
                    child.transform.localScale = scaleHairSlim;
                }
            }
            if (armatureHairNeck && armatureHairNeck.transform.childCount != 0)
            {
                GUILayout.Label("Hair Size (Neck Strands)");
                hairSizeNeck = EditorGUILayout.Slider(hairSizeNeck, 0.9f, 2.0f);
                //scaleHairNeck = new Vector3(hairSizeNeck / 1.3f, hairSizeNeck, hairSizeNeck / 1.3f);
                scaleHairNeck = new Vector3(hairSizeNeck, hairSizeNeck, hairSizeNeck);
                armatureHairNeck.transform.GetChild(armatureHairNeck.transform.childCount - 1);
                GUILayout.Space(10);
                foreach (Transform child in armatureHairNeck.transform)
                {
                    child.transform.localScale = scaleHairNeck;
                }
            }
            if (armatureHairBraid)
            {
                armatureHairBraid = GameObject.Find("Hair.Braid.1");
                GUILayout.Label("Braid Size");
                hairSizeBraid = EditorGUILayout.Slider(hairSizeBraid, 0.9f, 1.4f);
                scaleBraid = new Vector3(hairSizeBraid, hairSizeBraid, hairSizeBraid);
                armatureHairBraid.transform.localScale = scaleBraid;
            }

            // Ear Section
            ChukiHelper.UI.Separator(true);
            GUILayout.Label("Ear Size");
            earSize = EditorGUILayout.Slider(earSize, 0.6f, 1.2f);
            armatureEarL = GameObject.Find("EarRoot.L");
            armatureEarR = GameObject.Find("EarRoot.R");
            scaleEar = new Vector3(earSize, earSize, earSize);
            armatureEarL.transform.localScale = scaleEar;
            armatureEarR.transform.localScale = scaleEar;
            GUILayout.Space(10);

            // Ear Flop
            GUILayout.Label("Ear Flop");
            earFlop = EditorGUILayout.Slider(earFlop, 0.0f, 1.0f);
                float earFlopXDif = (StaticValue.earFlopXMax / StaticValue.earFlopXMin) - 1.0f;
                float earFlopX = (((earFlopXDif * earFlop) + 1.0f) * StaticValue.earFlopXMin);

            float earFlopYDif = (StaticValue.earFlopYMax / StaticValue.earFlopYMin) - 1.0f;
                float earFlopY = (((earFlopYDif * earFlop) + 1.0f) * StaticValue.earFlopYMin);

                float earFlopZDif = (StaticValue.earFlopZMax / StaticValue.earFlopZMin) - 1.0f;
                float earFlopZ = (((earFlopZDif * earFlop) + 1.0f) * StaticValue.earFlopZMin);

                armatureEarL.transform.localRotation = Quaternion.Euler(earFlopX, -earFlopY, -earFlopZ);
                armatureEarR.transform.localRotation = Quaternion.Euler(earFlopX, earFlopY, earFlopZ);

            //Quaternion p = armatureEarL.transform.rotation;
            //Debug.Log(p[0] + .112f);


            //float earFlopTMP = Quaternion.Angle(armatureEarL.transform.rotation, GameObject.Find("EarRoot").transform.rotation);
            //Debug.Log("Initial: Quaternion" + earFlopTMP);
            //earFlopTMP = earFlopTMP - 107.448f;
            //Debug.Log("Math: Quaternion" + earFlopTMP);

            //Can't get this to work for some reason ;u;
            //myDummyDefault = GameObject.Find("DummyDefault");
            //m_Animator = myDummyDefault.GetComponent<Animator>();
            //if (m_Animator != null)
            //{
            //    m_Animator.SetFloat("EarFlop", 0.5f);

            //}
            //else
            //{
            //    Animator not attached?
            //}

            GUILayout.Space(10);

            // Whisker Section
            ChukiHelper.UI.Separator(true);

            // Whisker Size
            GUILayout.Label("Whisker Size");
            whiskerSize = EditorGUILayout.Slider(whiskerSize, 0.6f, 1.2f);
                armatureWhisker1L = GameObject.Find("Whisker.1.L");
                armatureWhisker2L = GameObject.Find("Whisker.2.L");
                armatureWhisker1R = GameObject.Find("Whisker.1.R");
                armatureWhisker2R = GameObject.Find("Whisker.2.R");
                scaleWhisker = new Vector3(whiskerSize, whiskerSize, whiskerSize);
                armatureWhisker1L.transform.localScale = scaleWhisker;
                armatureWhisker2L.transform.localScale = scaleWhisker;
                armatureWhisker1R.transform.localScale = scaleWhisker;
                armatureWhisker2R.transform.localScale = scaleWhisker;
                GUILayout.Space(10);

            // WHISKER POSITION
            GUILayout.Label("Whisker Position");
            whiskerPosition = EditorGUILayout.Slider(whiskerPosition, 0.0f, 1.0f);

                float Whisker1RPosX = (((whisker1RPosXDif * whiskerPosition) + 1.0f) * StaticValue.whisker1RPosXMin);
                float Whisker1RPosY = (((whisker1RPosYDif * whiskerPosition) + 1.0f) * StaticValue.whisker1RPosYMin);
                float Whisker1RPosZ = (((whisker1RPosZDif * whiskerPosition) + 1.0f) * StaticValue.whisker1RPosZMin);

                float Whisker2RPosX = (((whisker2RPosXDif * whiskerPosition) + 1.0f) * StaticValue.whisker2RPosXMin);
                float Whisker2RPosY = (((whisker2RPosYDif * whiskerPosition) + 1.0f) * StaticValue.whisker2RPosYMin);
                float Whisker2RPosZ = (((whisker2RPosZDif * whiskerPosition) + 1.0f) * StaticValue.whisker2RPosZMin);

                Vector3 whisker1RPos, whisker1LPos, whisker2RPos, whisker2LPos;

                whisker1RPos = new Vector3(Whisker1RPosX, Whisker1RPosY, Whisker1RPosZ);
                whisker1LPos = new Vector3(-Whisker1RPosX, Whisker1RPosY, Whisker1RPosZ);
                whisker2RPos = new Vector3(Whisker2RPosX, Whisker2RPosY, Whisker2RPosZ);
                whisker2LPos = new Vector3(-Whisker2RPosX, Whisker2RPosY, Whisker2RPosZ);

                armatureWhisker1L.transform.localPosition = (whisker1LPos);
                armatureWhisker1R.transform.localPosition = (whisker1RPos);
                armatureWhisker2L.transform.localPosition = (whisker2LPos);
                armatureWhisker2R.transform.localPosition = (whisker2RPos);

                GUILayout.Space(10);

            // TODO: If my suggestion in DrawChukiFluffPanel() below works well, maybe you could do similar here?
            GUILayout.Label("Whisker Floating");
            // Whisker floating
            whiskerFloating = EditorGUILayout.Slider(whiskerFloating, 0.0f, 100.0f);
                ChukiBlendShape.ChangeSingle(StaticValue.DictBody["Floating Whiskers"], whiskerFloating, "Body");

            //Horn Section
            ChukiHelper.UI.Separator(true);
            if (myChukiCrystals.GetComponent<SkinnedMeshRenderer>().GetBlendShapeWeight(StaticValue.DictCrystal["Horn Left"]) == 0)
            {
                hornSizeL = EditorGUILayout.Slider("Horn Size: Left", hornSizeL, 0.0f, 100.0f);
                ChukiBlendShape.ChangeSingle(StaticValue.DictCrystal["HornSizeL"], hornSizeL, "Crystals");
            }
            if (myChukiCrystals.GetComponent<SkinnedMeshRenderer>().GetBlendShapeWeight(StaticValue.DictCrystal["Horn Center"]) == 0)
            {
                hornSizeC = EditorGUILayout.Slider("Horn Size: Center", hornSizeC, 0.0f, 100.0f);
                ChukiBlendShape.ChangeSingle(StaticValue.DictCrystal["HornSizeC"], hornSizeC, "Crystals");
            }
            if (myChukiCrystals.GetComponent<SkinnedMeshRenderer>().GetBlendShapeWeight(StaticValue.DictCrystal["Horn Right"]) == 0)
            {
                hornSizeR = EditorGUILayout.Slider("Horn Size: Right", hornSizeR, 0.0f, 100.0f);
                ChukiBlendShape.ChangeSingle(StaticValue.DictCrystal["HornSizeR"], hornSizeR, "Crystals");
            }
        }
        void DrawChukiFaceMods()
        {
            ChukiHelper.UI.Separator(true);
            SetChukiFluff("Nose Size", StaticValue.DictBody["Nose_Size"], ref noseSize);
            GUILayout.Label("Snout Size");
            snoutSize = EditorGUILayout.Slider(snoutSize, 0.0f, 100.0f);
                ChukiBlendShape.ChangeCombo(StaticValue.DictBody["Snout_Large"], snoutSize, "Body");
            SetChukiFluff("Browridge", StaticValue.DictBody["EyebrowBridge"], ref browSize);
                ChukiBlendShape.ChangeSingle(StaticValue.DictAccessories["Eyebrow Bridge"], browSize, "Accessories");
            SetChukiFluff("Everly Muzzle", StaticValue.DictBody["Everly_Muzzle"], ref everlyMuzzleSize);
            SetChukiFluff("Brad Snout", StaticValue.DictBody["Brad_Snout"], ref bradSnoutSize);
            SetChukiFluff("Brad Chin", StaticValue.DictBody["Brad_Chin"], ref bradChinSize);
            SetChukiFluff("Brad Cheeks", StaticValue.DictBody["Brad_Cheeks"], ref bradCheekSize);

            AdjustVRCReceiverPosition(snoutSize, everlyMuzzleSize, bradSnoutSize);

                EditorGUILayout.Space(10);
        }
        void DrawChukiFluffPanel()
        {
            ChukiHelper.UI.Separator(true);
            // FLUFFS
            // Shoulder Fluffs
            if (chukiAccessoriesArr[2])
            {
                if (GUILayout.Button("Shoulder Fluffs: ON"))
                {
                    chukiAccessoriesArr[2] = false;
                }
            } else
            {
                if (GUILayout.Button("Shoulder Fluffs: OFF"))
                {
                    chukiAccessoriesArr[2] = true;
                }    
            }
            //chukiAccessoriesArr[2] = EditorGUILayout.ToggleLeft("Shoulder Fluffs", chukiAccessoriesArr[2]);
            if (chukiAccessoriesArr[2])
            {
                ChukiBlendShape.Toggle(StaticValue.DictBody["Shoulder Fluffs"], true, "Body");
                MatScript.ChangeUDIM("fluffShoulder", true);
                GUILayout.Label("Size");
                fluffSize = EditorGUILayout.Slider(fluffSize, 0.2f, 1.50f);
                scaleFluff = new Vector3(fluffSize, fluffSize, fluffSize);
                armatureShFluffL = GameObject.Find("ShFluffRoot.L");
                armatureShFluffL.transform.localScale = scaleFluff;
                armatureShFluffR = GameObject.Find("ShFluffRoot.R");
                armatureShFluffR.transform.localScale = scaleFluff;
            }
            else
            {
                EditorGUI.BeginDisabledGroup(true);
                GUILayout.Label("Size");
                fluffSize = EditorGUILayout.Slider(fluffSize, 0.2f, 1.50f);
                EditorGUI.EndDisabledGroup();
                ChukiBlendShape.Toggle(StaticValue.DictBody["Shoulder Fluffs"], false, "Body");
                MatScript.ChangeUDIM("fluffShoulder", false);
            }

            // Ear Fluffs
            if (chukiAccessoriesArr[3])
            {
                if (GUILayout.Button("Ear Fluffs: ON"))
                {
                    chukiAccessoriesArr[3] = false;
                }
            }
            else
            {
                if (GUILayout.Button("Ear Fluffs: OFF"))
                {
                    chukiAccessoriesArr[3] = true;
                }
            }
            //chukiAccessoriesArr[3] = EditorGUILayout.ToggleLeft("Ear Fluff", chukiAccessoriesArr[3]);
            if (chukiAccessoriesArr[3])
            {
                ChukiBlendShape.Toggle(StaticValue.DictAccessories["EarTufts_HIDE"], true, "Accessories");
                MatScript.ChangeUDIM("fluffEar", true);
                GUILayout.Label("Position");
                earFluffPos = EditorGUILayout.Slider(earFluffPos, 0.0f, 100.0f);
                ChukiBlendShape.ChangeSingle(StaticValue.DictAccessories["EarTufts Position"], earFluffPos, "Accessories");
            }
            else
            {
                EditorGUI.BeginDisabledGroup(true);
                GUILayout.Label("Position");
                earFluffPos = EditorGUILayout.Slider(earFluffPos, 0.0f, 100.0f);
                EditorGUI.EndDisabledGroup();
                ChukiBlendShape.Toggle(StaticValue.DictAccessories["EarTufts_HIDE"], false, "Accessories");
                MatScript.ChangeUDIM("fluffEar", false);
            }
            ChukiHelper.UI.Separator(true);

            // ChujiREF: I've written a function above to aim to replace each of these paragraphs. Not sure if it'll 100% work in this context, but maybe try it!
            // use the designator ref to pass a variable.

            SetChukiFluff("Chin Fuzz", StaticValue.DictBody["Fuzz_Chin"], ref chinFuzz);
                SetChukiFluff("Cheek Fuzz", StaticValue.DictBody["Fuzz_Cheeks"], ref cheekFuzz);
                SetChukiFluff("Elbow Fuzz", StaticValue.DictBody["Fuzz_Elbows"], ref elbowFuzz);
                SetChukiFluff("Shoulder Fuzz", StaticValue.DictBody["Fuzz_Shoulders"], ref shoulderFuzz);
                SetChukiFluff("Knee Fuzz", StaticValue.DictBody["Fuzz_Knees"], ref kneeFuzz);
                SetChukiFluff("Chest Fuzz", StaticValue.DictBody["Fuzz_Chest"], ref chestFuzz);
                SetChukiFluff("Calf Fuzz", StaticValue.DictBody["Fuzz_Shins"], ref shinFuzz);

            ChukiHelper.UI.Separator(true);
        }
        void DrawValveIndex()
        {
            ChukiHelper.UI.Separator(true);

            GameObject mySource = GameObject.Find("My Chuki");
            VRC_AvatarDescriptor desc = mySource.GetComponent<VRC_AvatarDescriptor>();

            if (desc.baseAnimationLayers[2].animatorController.name == "Gesture")
            {
                if (GUILayout.Button("Use Valve Index Gesture Controller"))
                {
                    ChangeValveIndex("ValveIndex");

                }
            }
            else
            {
                if (GUILayout.Button("Use Default Gesture Controller"))
                {
                    ChangeValveIndex("");
                }
            }
                GUILayout.Label("The Valve Index Gestue Controller disables Finger Tracking for the Fist Gesture. So your hand won't remain slightly open when making a fist.");
        }
        void DrawMMD()
        {
            Texture MMD_Radial_IMG;
            MMD_Radial_IMG = Resources.Load<Texture>("UI/MMD_Radial");

            // Check what Avatar Configuration the Avatar Currently has
            myChuki = GameObject.Find("My Chuki");
            bool raceBool = false, frameBool = false;
            //TODO Make this inline.
            //if (myChuki.GetComponent<Animator>().avatar.ToString().Contains("MMD"))
            //{
            //    MMDAvatarConfig = true;
            //} else
            //{
            //    MMDAvatarConfig = false;
            //}

            ChukiHelper.UI.Separator(true);
            GUILayout.Label("The chuki Avatar needs a special avatar configuration to perform well in MMD worlds. Unfortunately this avatar configuration can only be toggled ON and OFF from within Unity and cannot be changed once in VRChat.");
            GUILayout.Label("This affects all the default animations (walking, crouching, even full body!). I recommend uploading a normal avatar and an MMD avatar.");
            GUILayout.Label("This should fix about 90% of crazy leg syndrome.");
            // Toggle MMD Armature Buttons

            if (myChuki.GetComponent<Animator>().avatar.ToString().Contains("MMD"))
            {
                if (GUILayout.Button("Turn OFF MMD Armature"))
                {
                    // Get current race, and frame to preserve these.
                    if (myChuki.GetComponent<Animator>().avatar.ToString().Contains("Qiu"))
                    { raceBool = true; }
                    if (myChuki.GetComponent<Animator>().avatar.ToString().Contains("Twink"))
                    { frameBool = true; }
                    if (GameObject.Find("KWood").transform.GetChild(0).gameObject.name == "BaseID: BaseBreast")
                    { BreastsEnabled = true; } else { BreastsEnabled = false; }

                    ChukiCustomizer.ChangeAvatarConfig(raceBool, false, frameBool);

                    ChukiCustomizer.BodyFrameSwitch(frameBool);
                    ChukiCustomizer.RaceSwitch(raceBool);
                    ChukiCustomizer.BreastSwitch(frameBool, BreastsEnabled);

                    MoveViewpointToScale(_tempAvatarDescriptor, chukiHeightUnityFloat); // move viewpoint
                }
            }
            else
            {
                if (GUILayout.Button("Turn ON MMD Armature"))
                {
                    // Get current race, and frame to preserve these.
                    if (myChuki.GetComponent<Animator>().avatar.ToString().Contains("Qiu"))
                    { raceBool = true; }
                    if (myChuki.GetComponent<Animator>().avatar.ToString().Contains("Twink"))
                    { frameBool = true; }
                    if (GameObject.Find("KWood").transform.GetChild(0).gameObject.name == "BaseID: BaseBreast")
                    { BreastsEnabled = true; } else { BreastsEnabled = false; }

                    ChukiCustomizer.ChangeAvatarConfig(raceBool, true, frameBool);

                    ChukiCustomizer.BodyFrameSwitch(frameBool);
                    ChukiCustomizer.RaceSwitch(raceBool);
                    ChukiCustomizer.BreastSwitch(frameBool, BreastsEnabled);

                    MoveViewpointToScale(_tempAvatarDescriptor, chukiHeightUnityFloat); // move viewpoint
                }
            }

            // Radial Menu Explanation Section
            ChukiHelper.UI.Separator(true);
            GUILayout.Label("MMD Mode Radial Menu", EditorStyles.boldLabel);
            GUILayout.Label(MMD_Radial_IMG);
            scrollPos = EditorGUILayout.BeginScrollView(scrollPos, GUILayout.Height(200));
            GUILayout.Label("Soft Shadows", EditorStyles.boldLabel);
            GUILayout.Label(@"- Blurs shadows on body, this helps fight ""stair case"" shadows in some lighting conditions.");
            GUILayout.Label("MMD Mode", EditorStyles.boldLabel);
            GUILayout.Label(@"- Limits how far your lower leg will bend, helps prevent your ankle from moving past your hips.
- Disables Blink Animations.
- Disables Hand Gesture Expressions.
- Disables Expression Set.");
            GUILayout.Label("Enable English Visemes", EditorStyles.boldLabel);
            GUILayout.Label(@"- Some MMD Animations only have English Visemes, enable this if your mouth is not moving.
- NOTE! Most MMD Animations have BOTH English and Japanese, leaving this toggle on will cause your expressions to ""double up"".");
            GUILayout.Label("Disable Interactibles", EditorStyles.boldLabel);
            GUILayout.Label(@"- Disables Nose Boop animation.
- Disables Head Pat animation.
- Disables AFK animations.");
            EditorGUILayout.EndScrollView();
        }
        void DrawMissingChuki()
        {
            GUILayout.Label(@"The Chuki installer is meant to work on one Chuki at a time.
The first ""My Chuki"" will be the chuki this editor modifies.

To work on a different chuki, please go to the Main Menu and Create a New Chuki.");
        }
        void DrawCredits()
        {
            ChukiHelper.UI.Separator(true);
            if (GUILayout.Button("Setup Tutorial", GUILayout.Width(260)))
            {
                Application.OpenURL("https://www.youtube.com/watch?v=6znqQw5nZn8&list=PLb98qHjhIvHdmc-8-v-ue9mSjnwG5k-zD&index=1");
            }

            GUILayout.Label("To make updates easier on you, please do not Unpack your Prefab!");
            
            ChukiHelper.UI.Separator(true);
            GUILayout.Label("If you would like to report any bugs or need help with installation, you can contact me via the following:");
            if (GUILayout.Button("Discord", GUILayout.Width(260)))
            {
                Application.OpenURL("https://discordapp.com/users/154145607139721216");
            }
            if (GUILayout.Button("Telegram", GUILayout.Width(260)))
            {
                Application.OpenURL("https://t.me/shiuk");
            }
            if (GUILayout.Button("Twitter", GUILayout.Width(260)))
            {
                Application.OpenURL("https://twitter.com/shiuk");
            }

            ChukiHelper.UI.Separator(true);
            GUILayout.Label(@"Chuki V2 is in progress. To help contribute to the development, please visit Roy's Patreon page.");
            if (GUILayout.Button("Roy's Patreon", GUILayout.Width(260)))
            {
                Application.OpenURL("https://www.patreon.com/RoyArashi");
            }

            ChukiHelper.UI.Separator(true);
            if (GUILayout.Button("Chuki VRChat Group", GUILayout.Width(260)))
            {
                Application.OpenURL("https://vrc.group/CHUKI.4973");
            }
            if (GUILayout.Button("Gumroad Page", GUILayout.Width(260)))
            {
                Application.OpenURL("https://shiuk.gumroad.com/");
            }

            ChukiHelper.UI.Separator(true);
            scrollPos = EditorGUILayout.BeginScrollView(scrollPos, GUILayout.Height(150));
            GUILayout.Label("Here are the heroes who have contributed\nto the Chuki avatar project!", EditorStyles.boldLabel);
            ChukiHelper.UI.Separator(true);
            GUILayout.Label("Roy Arashi", EditorStyles.boldLabel);
            GUILayout.Label(@"Creator of the Chuki species, and of the original 1.0-1.3 Chuki avatar model. None of this would be possible without him!");
            GUILayout.Label("Shiuk", EditorStyles.boldLabel);
            GUILayout.Label(@"Lead developer since the 1.3.1 update; most changelog items since then can be credited to him, including the Physbone update. Also created various outfits!");
            GUILayout.Label("Biscuit", EditorStyles.boldLabel);
            GUILayout.Label(@"An incredible contributor to the project, responsible for the Brad features/blendshapes, belly physics, fluff & expression mesh adjustments, five-finger hands, gauge earrings, and much more. Wow! He�s also working on DLC outfits to come in the future.");
            GUILayout.Label("Chabbot", EditorStyles.boldLabel);
            GUILayout.Label(@"Crystals Preset; Poiyomi Consultant; Development Support");
            GUILayout.Label("Chuji", EditorStyles.boldLabel); 
            GUILayout.Label(@"C# Programming Assistant for Chuki Installer; 1.4 Tutorial Videos; Compiling this credits list!");
            GUILayout.Label("Jagrabbit", EditorStyles.boldLabel); 
            GUILayout.Label(@"Substance Painter file provision");
            GUILayout.Label("Kazzy", EditorStyles.boldLabel); 
            GUILayout.Label(@"Everly blendshapes for Chuki body/face");
            GUILayout.Label("Prime -Catboy", EditorStyles.boldLabel);
            GUILayout.Label(@"New eye layers in texture .psd");
            GUILayout.Label("Serianfis", EditorStyles.boldLabel);
            GUILayout.Label(@"Smaller breasts blendshape");
            GUILayout.Label("Ultratails42", EditorStyles.boldLabel); 
            GUILayout.Label(@"Substance Painter file provision");
            GUILayout.Label("XPanther", EditorStyles.boldLabel); 
            GUILayout.Label(@"Crystals Preset; Poiyomi Consultant");
            GUILayout.Label("Special Thanks for General Support &\nImplemented Suggestions:", EditorStyles.boldLabel);
            GUILayout.Label(@"Aerix, Baku, Surge, Syro Moon, WierdZach");
            EditorGUILayout.EndScrollView();
            ChukiHelper.UI.Separator(true);
            DrawHeader();
        }
        void DrawChukiList()
        {
            // Grab all Scene Assets located in the MyChukis folder
            string[] guids1 = AssetDatabase.FindAssets("t:Scene", new[] { "Assets/Chuki/MyChukis" });
            foreach (string guid1 in guids1)
            {
                //convert GUID Asset Path Object to a string to grab the name.
                string str = AssetDatabase.GUIDToAssetPath(guid1).ToString();
                str = str.Replace("Assets/Chuki/MyChukis/", "");
                str = str.Replace(".unity", "");

                GUILayout.BeginHorizontal();
                // Create Button for loading that Chuki
                if (GUILayout.Button(str))
                {
                    EditorSceneManager.OpenScene(AssetDatabase.GUIDToAssetPath(guid1), OpenSceneMode.Single);
                    menuMain = false;
                };
                
                /*
                if (GUILayout.Button("Export"))
                {
                    string sceneFile = AssetDatabase.GUIDToAssetPath(guid1).ToString();
                    string folder = sceneFile.Replace(".unity", "");
                    string filename = folder.Replace("Assets/Chuki/MyChukis/", "");
                    filename += "_export.unitypackage";
                    folder += "/";

                    string[] chukiExportPaths = new string[]
                    {
                        sceneFile,
                        folder,
                    };
                    Debug.Log(sceneFile);
                    Debug.Log(folder);
                    Debug.Log(filename);
                    AssetDatabase.ExportPackage(chukiExportPaths, "C:/Users/Shiuk/Desktop/" + filename, ExportPackageOptions.Recurse);
                }*/
                
                GUILayout.EndHorizontal();
            }
        }
        void DrawNewChuki()
        {
            if (GUILayout.Button("Create New Chuki from scratch"))
            {
                var newScene = EditorSceneManager.NewScene(NewSceneSetup.EmptyScene, NewSceneMode.Single);
                bool saveOK = EditorSceneManager.SaveScene(EditorSceneManager.GetActiveScene(), "Assets/Chuki/MyChukis/tmp.unity");
                bool deleteOK = AssetDatabase.DeleteAsset("Assets/Chuki/MyChukis/tmp");
                string createOK = AssetDatabase.CreateFolder("Assets/Chuki/MyChukis", "tmp");
                bool copyOK = AssetDatabase.CopyAsset("Assets/Chuki/MatsTexture/Body.png", "Assets/Chuki/MyChukis/tmp/Body.png");
                copyOK = AssetDatabase.CopyAsset("Assets/Chuki/MatsTexture/Body-Poi8.1_Toon_Opaque.mat", "Assets/Chuki/MyChukis/tmp/Body-Poi8.1_Toon_Opaque.mat");
                copyOK = AssetDatabase.CopyAsset("Assets/Chuki/MatsTexture/Crystals/Crystals_Classic New-Poi8.1_Toon_Opaque.mat", "Assets/Chuki/MyChukis/tmp/Crystals.mat");

                runOnce = false; // reset initialization check.
                menuMain = false;

                ChukiTmpStart(); // Generate Preview Chuki
            };
            EditorGUI.BeginDisabledGroup(true);
            {
                GUILayout.Button("In Progress: Copy Chuki from Import file");
            }
            EditorGUI.EndDisabledGroup();

            GUILayout.Label("Working with multiple Chukis", EditorStyles.boldLabel);
            GUILayout.Label(@"Each chuki created with this installer will have its own unique Scene, Body texture, Body Material, and Crystal Material.

Other files are shared among all chukis: such as VRCParameters, Animations, Animation Controllers, Expression Menus.

If you would like to use different files, you will need to create your own.");
        }
        void DrawDeleteChuki()
        {
            ChukiHelper.UI.Separator(true);
            GUILayout.Label("Are you sure you want to Delete this Chuki?");
            GUILayout.Label(@"Doing this will Delete the following:
 - the Scene this chuki lives in.
 - the Folder associated with this chuki along with it's Contents.");
            ChukiHelper.UI.Separator(true);
            GUILayout.BeginHorizontal();
            GUILayout.Space(((position.width-180)/2)-60);
            if (GUILayout.Button("Confirm Delete", "DeleteButton", GUILayout.Width(120)))
            {
                string oldSceneName = EditorSceneManager.GetActiveScene().name;
                AssetDatabase.MoveAssetToTrash($"Assets/Chuki/MyChukis/{oldSceneName}.unity");
                bool deleteOK = AssetDatabase.MoveAssetToTrash($"Assets/Chuki/MyChukis/{oldSceneName}");

                EditorSceneManager.OpenScene("Assets/Chuki/Scene Items/Startup.unity", OpenSceneMode.Single);
                menuMain = true;
            }
            GUILayout.EndHorizontal();
        }
        void DrawImport()
        {
            // TODO: Create Import Export Page
            GUILayout.Label("Import Export Page: uwu, still working on this.");
        }
        void DrawChangeLog()
        {
            string path = "Assets/Chuki/Editor/Resources/Changelog.txt";
            StreamReader reader = new StreamReader(path);
            GUILayout.TextArea(reader.ReadToEnd(), GUILayout.Width(position.width-210), GUILayout.ExpandHeight(true));
            reader.Close();
        }
        // ^^^^^^
        void rootMenuDisplay(int menuChosen)
        {
            switch (menuChosen)
            {
                case 1:
                    DrawChukiList();
                    break;
                case 2:
                    DrawNewChuki();
                    break;
                case 3:
                    DrawImport();
                    break;
                case 4:
                    DrawChangeLog();
                    break;
                case 5:
                    DrawCredits();
                    break;
                default:
                    DrawChangeLog();
                    break;
            }
        }
        void menuDisplay(int menuChosen)
        {
            switch(menuChosen)
            {
                case 0:
                    // Load Empty Scene
                    EditorSceneManager.OpenScene("Assets/Chuki/Scene Items/Startup.unity", OpenSceneMode.Single);
                    break;
                case 1:
                    DrawChukiRaces();
                    break;
                case 2:
                    DrawHairstyles();
                    break;
                case 3:
                    DrawCrystals();
                    break;
                case 4:
                    DrawCrystalsColors();
                    break;
                case 5:
                    DrawBodyMaterial();
                    break;
                case 6:
                    DrawHeight();
                    break;
                case 7:
                    DrawExtras();
                    break;
                case 8:
                    DrawChukiBodyMods();
                    break;
                case 9:
                    DrawChukiHeadMods();
                    break;
                case 10:
                    DrawChukiFaceMods();
                    break;
                case 11:
                    DrawChukiFluffPanel();
                    break;
                case 12:
                    DrawExpressionSets();
                    break;
                case 13:
                    DrawEarFlop();
                    break;
                case 14:
                    DrawValveIndex();
                    break;
                case 15:
                    DrawMMD();
                    break;
                case 16:
                    DrawCredits();
                    break;
                case 20:
                    DrawDeleteChuki();
                    break;
                case 30:
                    DrawMissingChuki();
                    break;
                default:
                    DrawCredits();
                    break;

            }
        }
        void CheckDirty()
        {
            EditorSceneManager.SaveOpenScenes();
        }
        void SaveChuki()
        {
            HandleTextFile.WriteString("earFlop", earFlop);
            bool saveOK = EditorSceneManager.SaveScene(EditorSceneManager.GetActiveScene(), $"Assets/Chuki/MyChukis/{EditorSceneManager.GetActiveScene().name}.unity");
        }
        void ChukiLenseQuestSwap()
        {
            GameObject myAccessories;
            myAccessories = GameObject.Find("Accessories");

            SkinnedMeshRenderer skinnedMeshRenderer;

            skinnedMeshRenderer = myAccessories.GetComponent<SkinnedMeshRenderer>();
            if (skinnedMeshRenderer.GetBlendShapeWeight(StaticValue.DictAccessories["Lense_HIDE"]) == 0)
            {
                ChukiBlendShape.Toggle(StaticValue.DictAccessories["Lense_HIDE"], false, "Accessories"); //Lense_HIDE
            }
            else
            {
                ChukiBlendShape.Toggle(StaticValue.DictAccessories["Lense_HIDE"], true, "Accessories"); //Lense_HIDE
            }
        }
        void ChukiGlassesSwap(bool lenseType)
        {
            GameObject objectLenses;
            objectLenses = GameObject.Find("Lenses");
            /*(objectGlassScript = GameObject.Find("Script.Glasses");
            if (objectGlassScript)
            {
                VRCContactReceiver VRCCRref = objectGlassScript.GetComponent(typeof(VRCContactReceiver)) as VRCContactReceiver;
            }*/

            //objectGlassScript = GameObject.Find("GlassesAngle");
            switch (chukiGlassesIndex)
            {
                case 0: // no Glasses
                    ChukiBlendShape.Toggle(StaticValue.DictAccessories["Glasses_Ty_HIDE"], false, "Accessories"); //Glasses_Ty_HIDE
                    ChukiBlendShape.Toggle(StaticValue.DictAccessories["Glasses_Axtii_HIDE"], false, "Accessories"); //Glasses_Axtii_Hide
                    ChukiBlendShape.Toggle(StaticValue.DictAccessories["Ty_Lense"], true, "Accessories"); //Ty_Lense
                    ChukiBlendShape.Toggle(StaticValue.DictAccessories["Ty_Lense_Axtii"], true, "Accessories"); //Ty_Lense_Axtii
                    ChukiBlendShape.Toggle(StaticValue.DictAccessories["Lense_HIDE"], false, "Accessories"); //Lense_HIDE
                                                                                                             // go to BODY MATERIAL, change Special FX, UV Tile Discard, V(2,0) ON AND V(2,3) OFF
                    MatScript.ChangeUDIM("GlassesNone", true);
                    if (objectLenses)
                    {
                        DestroyImmediate(objectLenses, false); // Remove Classic Lenses
                    }
                    DestroyImmediate(GameObject.Find("Script.Glasses"), false); // Remove Glasses Script
                    break;
                case 1: // Ty Glasses
                    ChukiBlendShape.Toggle(StaticValue.DictAccessories["Glasses_Ty_HIDE"], true, "Accessories"); // Glasses_Ty_Hide
                    ChukiBlendShape.Toggle(StaticValue.DictAccessories["Glasses_Axtii_HIDE"], false, "Accessories"); // Glasses_Axtii_Hide
                    ChukiBlendShape.Toggle(StaticValue.DictAccessories["Ty_Lense"], false, "Accessories"); //Ty_Lense
                    ChukiBlendShape.Toggle(StaticValue.DictAccessories["Ty_Lense_Axtii"], true, "Accessories"); //Ty_Lense_Axtii
                                                                                                                // go to BODY MATERIAL, change Special FX, UV Tile Discard, V(2,0) ON AND V(2,3) OFF
                    MatScript.ChangeUDIM("GlassesTy", true);
                    if (objectLenses)
                    {
                        ChukiBlendShape.Toggle(0, false, "Lenses");
                        ChukiBlendShape.Toggle(5, true, "Lenses");
                    }
                    //if (objectGlassScript)
                    //{
                    //    //objectGlassScript.SetActive(true);
                    //    VRCCRref.enabled = true;
                    //}
                    if (!GameObject.Find("Script.Glasses")) { GlassesScript(); } // No Script Found, add it.
                    break;
                case 2: // Axtii Glasses 
                    ChukiBlendShape.Toggle(StaticValue.DictAccessories["Glasses_Ty_HIDE"], false, "Accessories");
                    ChukiBlendShape.Toggle(StaticValue.DictAccessories["Glasses_Axtii_HIDE"], true, "Accessories");
                    ChukiBlendShape.Toggle(StaticValue.DictAccessories["Ty_Lense"], true, "Accessories"); //Ty_Lense
                    ChukiBlendShape.Toggle(StaticValue.DictAccessories["Ty_Lense_Axtii"], true, "Accessories"); //Ty_Lense_Axtii
                                                                                                                // go to BODY MATERIAL, change Special FX, UV Tile Discard, V(2,0) ON AND V(2,3) OFF
                    MatScript.ChangeUDIM("GlassesAxtii", true);
                    if (objectLenses)
                    {
                        ChukiBlendShape.Toggle(0, true, "Lenses");
                        ChukiBlendShape.Toggle(5, true, "Lenses");
                    }
                    if (!GameObject.Find("Script.Glasses")) { GlassesScript(); } // No Script Found, add it.
                    break;
                case 3: // Axtii Frame Ty Lenses
                    ChukiBlendShape.Toggle(StaticValue.DictAccessories["Glasses_Ty_HIDE"], false, "Accessories");
                    ChukiBlendShape.Toggle(StaticValue.DictAccessories["Glasses_Axtii_HIDE"], true, "Accessories");
                    ChukiBlendShape.Toggle(StaticValue.DictAccessories["Ty_Lense"], false, "Accessories"); //Ty_Lense
                    ChukiBlendShape.Toggle(StaticValue.DictAccessories["Ty_Lense_Axtii"], false, "Accessories"); //Ty_Lense_Axtii
                                                                                                                 // go to BODY MATERIAL, change Special FX, UV Tile Discard, V(2,0) ON AND V(2,3) OFF
                    MatScript.ChangeUDIM("GlassesAxtii", true);
                    if (objectLenses)
                    {
                        ChukiBlendShape.Toggle(0, true, "Lenses");
                        ChukiBlendShape.Toggle(5, false, "Lenses");
                    }
                    if (!GameObject.Find("Script.Glasses")) { GlassesScript(); } // No Script Found, add it.
                    break;
                default:
                    ChukiBlendShape.Toggle(StaticValue.DictAccessories["Glasses_Ty_HIDE"], false, "Accessories");
                    ChukiBlendShape.Toggle(StaticValue.DictAccessories["Glasses_Axtii_HIDE"], false, "Accessories");
                    ChukiBlendShape.Toggle(StaticValue.DictAccessories["Ty_Lense"], true, "Accessories"); //Ty_Lense
                    ChukiBlendShape.Toggle(StaticValue.DictAccessories["Ty_Lense_Axtii"], true, "Accessories"); //Ty_Lense_Axtii
                    if (lenseType == true)
                    {
                        ChukiBlendShape.Toggle(StaticValue.DictAccessories["Lense_HIDE"], false, "Accessories"); //Lense_HIDE
                    }
                    else
                    {
                        ChukiBlendShape.Toggle(StaticValue.DictAccessories["Lense_HIDE"], true, "Accessories"); //Lense_HIDE
                    }
                    // go to BODY MATERIAL, change Special FX, UV Tile Discard, V(2,0) ON AND V(2,3) OFF
                    MatScript.ChangeUDIM("GlassesNone", true);
                    if (objectLenses)
                    {
                        DestroyImmediate(objectLenses, false);
                    }
                    DestroyImmediate(GameObject.Find("Script.Glasses"), false); // Remove Glasses Script
                    break;
            }
        }
        void GlassesScript()
        {
            var asset = AssetDatabase.LoadAssetAtPath<GameObject>("Assets/Chuki/Scripts/Script.Glasses.prefab");
            var prefab = PrefabUtility.InstantiatePrefab(asset) as GameObject;
            prefab.transform.SetParent(GameObject.Find("My Chuki/Extra/Scripts").transform);

            VRCContactReceiver VRCCR = prefab.GetComponent(typeof(VRCContactReceiver)) as VRCContactReceiver;
            VRCCR.rootTransform = GameObject.Find("My Chuki/Armature/Hips/Spine/Chest/UpperChest/Neck/Head/Glasses").transform;
            VRCContactSender VRCCS = GameObject.Find("GlassesAngle").GetComponent(typeof(VRCContactSender)) as VRCContactSender;
            VRCCS.rootTransform = GameObject.Find("My Chuki/Armature/Hips/Spine/Chest/UpperChest").transform;
            VRCCR = GameObject.Find("GlassesTilt").GetComponent(typeof(VRCContactReceiver)) as VRCContactReceiver;
            VRCCR.rootTransform = GameObject.Find("My Chuki/Armature/Hips/Spine/Chest/UpperChest/Neck/Head").transform;
        }
        void ChukiGlassLense()
        {
            // code to add/remove game object "Lense" from Extras.
            GameObject armatureGlassesParent;
            armatureGlassesParent = GameObject.Find("Glasses"); // Bone on Armature

            GameObject objectLenses;
            objectLenses = GameObject.Find("Lenses");

            if (objectLenses) // Object named Lense Found, Destroy them.
            {
                DestroyImmediate(objectLenses, false);
            }
            else // Object named Lense NOT Found, toggle them ON.
            {
                var asset = AssetDatabase.LoadAssetAtPath<GameObject>("Assets/Chuki/SourceFiles/Prefabs/Extras/LensesAnimated.prefab");
                var prefab = PrefabUtility.InstantiatePrefab(asset) as GameObject;
                prefab.name = "Lenses";

                objectLenses = GameObject.Find("Lenses");
                myChuki = GameObject.Find("My Chuki");
                switch (QiuRace)
                {
                    case true: // Qiu Chuki
                        // TODO: Maybe? I mean this works fine. Shiuky doesn't like to do match so instead let's convert to Aes, apply the object, then convert to Qiu.
                        ChukiCustomizer.RaceSwitch(false);
                        objectLenses.transform.localScale = myChuki.transform.localScale; // Change Scale to match Height.
                        objectLenses.transform.SetParent(armatureGlassesParent.transform);
                        ChukiCustomizer.RaceSwitch(true);
                        break;
                    default: // Default Chuki
                        objectLenses.transform.localScale = myChuki.transform.localScale; // Change Scale to match Height.
                        objectLenses.transform.SetParent(armatureGlassesParent.transform);
                        break;
                }


                switch (chukiGlassesIndex) // Change Shape of Lenses
                {
                    case 1:
                        ChukiBlendShape.Toggle(0, false, "Lenses");
                        ChukiBlendShape.Toggle(5, true, "Lenses");
                        break;
                    case 2:
                        ChukiBlendShape.Toggle(0, true, "Lenses");
                        ChukiBlendShape.Toggle(5, true, "Lenses");
                        break;
                    case 3:
                        ChukiBlendShape.Toggle(0, true, "Lenses");
                        ChukiBlendShape.Toggle(5, false, "Lenses");
                        break;
                    default:
                        DestroyImmediate(objectLenses, false);
                        break;
                }
            }
        }
        void MoveViewpointToScale(VRC_AvatarDescriptor desc, float newScale) // Compliments of Pumpkin from Pumpkin's Avatar Tools
        {
            //bool MVSMMD = false;
            //bool MVSTwink = false;
            float Correction = 0.0f;

            if (GameObject.Find("My Chuki").GetComponent<Animator>().avatar.ToString().Contains("MMD"))
            {
                Correction = Correction + 0.047f;
            }
            if (GameObject.Find("My Chuki").GetComponent<Animator>().avatar.ToString().Contains("Twink"))
            {
                Correction = Correction - 0.018f;
            }

            float viewPointY = (1.47f + Correction) * newScale; // Chuki Specific Viewpoint position at scale 1.0, Race Aes
            float viewPointZ = 0.105f * newScale;
            if (QiuRace)
            {
                viewPointY = (1.13f + Correction) * newScale; // Chuki Specific Viewpoint position at scale 1.0, Race Qiu
                viewPointZ = 0.095f * newScale;
            };
            Vector3 tempViewPosition;
            tempViewPosition = new Vector3(0.0f, viewPointY, viewPointZ);
            var sdesc = new SerializedObject(GameObject.Find("My Chuki").GetComponent<VRC_AvatarDescriptor>());
            var SViewPosition = sdesc.FindProperty("ViewPosition");
            SViewPosition.vector3Value = tempViewPosition;
            //Debug.Log(tempViewPosition);
            //desc.ViewPosition = tempViewPosition;

            sdesc.ApplyModifiedProperties();
        }
        void AdjustVRCReceiverPosition(float snout, float everly, float brad)
        {
            GameObject tmp;
            tmp = GameObject.Find("NoseScript");
            VRCContactReceiver VRCCR = tmp.GetComponent(typeof(VRCContactReceiver)) as VRCContactReceiver;
            tmp = GameObject.Find("NoseSender");
            VRCContactSender VRCCS = tmp.GetComponent(typeof(VRCContactSender)) as VRCContactSender;
            float posZ = ((snout * .00045f) + 0.225f);
            posZ = (posZ - (everly * .00022f));
            posZ = (posZ - (brad * .00022f));
            VRCCR.position = new Vector3(0, 0.027f, posZ);
            VRCCS.position = new Vector3(0, 0.027f, posZ);
        }
        void AdjustVRCBreastPhsyBone(float breastsize)
        {
            GameObject tmp;
            tmp = GameObject.Find("Breast.Script");
            VRCPhysBone VRCPB = tmp.GetComponent(typeof(VRCPhysBone)) as VRCPhysBone;
            float posY = ((breastsize * .0008f) + 0.04f);
            float posZ = ((breastsize * .00015f));
            float radius = ((breastsize * .0002f) + 0.06f);
            VRCPB.endpointPosition = new Vector3(0, posY, posZ);
            VRCPB.radius = radius;
        }
        void AdjustVRCBellyReceiverPosition(float waist, float everly)
        {
            GameObject tmp;
            tmp = GameObject.Find("Belly.Scripts");
            VRCPhysBone VRCPB = tmp.GetComponent(typeof(VRCPhysBone)) as VRCPhysBone;
            float posZ = ((waist * .0006f) + 0.1f);
            posZ = (posZ + (everly * .0004f));
            //posZ = (posZ - (brad * .00022f));
            VRCPB.radius = posZ;
            //VRCCS.position = new Vector3(0, 0.027f, posZ);
        }
        void HandleEarholes()
        {
            // Handle EarHole for both Gauge Earring/Crystal Left
            if (chukiAccessoriesArr[4] || chukiAccessoriesArr[1])
            {
                ChukiBlendShape.Toggle(StaticValue.DictBody["Gauge Left"], false, "Body");
                MatScript.ChangeUDIM("GaugeHoleL", true); // go to BODY MATERIAL, change Special FX, UV Tile Discard, V(2,0) ON AND V(2,3) OFF
            }
            else
            {
                ChukiBlendShape.Toggle(StaticValue.DictBody["Gauge Left"], true, "Body");
                MatScript.ChangeUDIM("GaugeHoleL", false);
            }

            // Handle EarHole for both Gauge Earring/Crystal Right
            if (chukiAccessoriesArr[5] || chukiAccessoriesArr[0])
            {
                ChukiBlendShape.Toggle(StaticValue.DictBody["Gauge Right"], false, "Body");
                MatScript.ChangeUDIM("GaugeHoleR", true); // go to BODY MATERIAL, change Special FX, UV Tile Discard, V(2,0) ON AND V(2,3) OFF
            }
            else
            {
                ChukiBlendShape.Toggle(StaticValue.DictBody["Gauge Right"], true, "Body");
                MatScript.ChangeUDIM("GaugeHoleR", false);
            }
        }
        void ChukiWristbandSwap()
        {
            switch (chukiWristbandIndex)
            {
                case 0: // no Wristband
                    ChukiBlendShape.Toggle(StaticValue.DictBody["Wristband HIDE"], false, "Body");
                    ChukiBlendShape.Toggle(StaticValue.DictBody["Wristband Spiked"], true, "Body");
                    ChukiBlendShape.Toggle(StaticValue.DictBody["Wristband Spike 2"], true, "Body");
                    ChukiBlendShape.Toggle(StaticValue.DictBody["Wristband Smooth"], true, "Body");
                    // go to BODY MATERIAL, change Special FX, UV Tile Discard, V(2,0) ON AND V(2,3) OFF
                    MatScript.ChangeUDIM("WristbandNone", true);
                    break;
                case 1: // Classic
                    ChukiBlendShape.Toggle(StaticValue.DictBody["Wristband HIDE"], true, "Body");
                    ChukiBlendShape.Toggle(StaticValue.DictBody["Wristband Spiked"], true, "Body");
                    ChukiBlendShape.Toggle(StaticValue.DictBody["Wristband Spike 2"], true, "Body");
                    ChukiBlendShape.Toggle(StaticValue.DictBody["Wristband Smooth"], true, "Body");
                    // go to BODY MATERIAL, change Special FX, UV Tile Discard, V(2,0) ON AND V(2,3) OFF
                    MatScript.ChangeUDIM("Wristband", true);
                    break;
                case 2: // Spiked
                    ChukiBlendShape.Toggle(StaticValue.DictBody["Wristband HIDE"], true, "Body");
                    ChukiBlendShape.Toggle(StaticValue.DictBody["Wristband Spiked"], false, "Body");
                    ChukiBlendShape.Toggle(StaticValue.DictBody["Wristband Spike 2"], true, "Body");
                    ChukiBlendShape.Toggle(StaticValue.DictBody["Wristband Smooth"], true, "Body");
                    // go to BODY MATERIAL, change Special FX, UV Tile Discard, V(2,0) ON AND V(2,3) OFF
                    MatScript.ChangeUDIM("Wristband", true);
                    break;
                case 3: // Spiked V2
                    ChukiBlendShape.Toggle(StaticValue.DictBody["Wristband HIDE"], true, "Body");
                    ChukiBlendShape.Toggle(StaticValue.DictBody["Wristband Spiked"], true, "Body");
                    ChukiBlendShape.Toggle(StaticValue.DictBody["Wristband Spike 2"], false, "Body");
                    ChukiBlendShape.Toggle(StaticValue.DictBody["Wristband Smooth"], true, "Body");
                    // go to BODY MATERIAL, change Special FX, UV Tile Discard, V(2,0) ON AND V(2,3) OFF
                    MatScript.ChangeUDIM("Wristband", true);
                    break;
                case 4: // Smooth
                    ChukiBlendShape.Toggle(StaticValue.DictBody["Wristband HIDE"], true, "Body");
                    ChukiBlendShape.Toggle(StaticValue.DictBody["Wristband Spiked"], true, "Body");
                    ChukiBlendShape.Toggle(StaticValue.DictBody["Wristband Spike 2"], true, "Body");
                    ChukiBlendShape.Toggle(StaticValue.DictBody["Wristband Smooth"], false, "Body");
                    // go to BODY MATERIAL, change Special FX, UV Tile Discard, V(2,0) ON AND V(2,3) OFF
                    MatScript.ChangeUDIM("Wristband", true);
                    break;
            }
        }
        void SetChukiFluff(string sliderName, int blendshapeId, ref float FluffType)
        {
            GUILayout.Label(sliderName);
            FluffType = EditorGUILayout.Slider(FluffType, 0.0f, 100.0f);
            ChukiBlendShape.ChangeSingle(blendshapeId, FluffType, "Body");
            GUILayout.Space(10);
        }
        void ChangeExpressionSet(string ExpressionSet)
        {
            var sdesc = new SerializedObject(GameObject.Find("My Chuki").GetComponent<VRC_AvatarDescriptor>());
            var SFX = sdesc.FindProperty("baseAnimationLayers");
            SFX.GetArrayElementAtIndex(4).FindPropertyRelative("animatorController").objectReferenceValue = AssetDatabase.LoadAssetAtPath<RuntimeAnimatorController>($"Assets/Chuki/Movement/Controllers/FX_{ExpressionSet}.controller");

            //
            switch (ExpressionSet)
            {
                case "Bratty":
                    sdesc.FindProperty("customEyeLookSettings").FindPropertyRelative("eyelidsBlendshapes").GetArrayElementAtIndex(0).intValue = -1;
                    sdesc.FindProperty("customEyeLookSettings").FindPropertyRelative("eyelidsBlendshapes").GetArrayElementAtIndex(1).intValue = 2;
                    break;
                case "Closed":
                    sdesc.FindProperty("customEyeLookSettings").FindPropertyRelative("eyelidsBlendshapes").GetArrayElementAtIndex(0).intValue = -1;
                    sdesc.FindProperty("customEyeLookSettings").FindPropertyRelative("eyelidsBlendshapes").GetArrayElementAtIndex(1).intValue = -1;
                    break;
                case "Sleepy":
                    sdesc.FindProperty("customEyeLookSettings").FindPropertyRelative("eyelidsBlendshapes").GetArrayElementAtIndex(0).intValue = -1;
                    sdesc.FindProperty("customEyeLookSettings").FindPropertyRelative("eyelidsBlendshapes").GetArrayElementAtIndex(1).intValue = -1;
                    break;
                default:
                    sdesc.FindProperty("customEyeLookSettings").FindPropertyRelative("eyelidsBlendshapes").GetArrayElementAtIndex(0).intValue = 0;
                    sdesc.FindProperty("customEyeLookSettings").FindPropertyRelative("eyelidsBlendshapes").GetArrayElementAtIndex(1).intValue = 2;
                    break;
            }
            //Debug.Log("Blinks : " + sdesc.FindProperty("customEyeLookSettings").FindPropertyRelative("eyelidsBlendshapes").GetArrayElementAtIndex(0).intValue);
            //Debug.Log("Look UP: " + sdesc.FindProperty("customEyeLookSettings").FindPropertyRelative("eyelidsBlendshapes").GetArrayElementAtIndex(1).intValue);
            //Debug.Log("Look DW: " + sdesc.FindProperty("customEyeLookSettings").FindPropertyRelative("eyelidsBlendshapes").GetArrayElementAtIndex(2).intValue);

            sdesc.ApplyModifiedProperties();

            //GameObject mySource = GameObject.Find("My Chuki");
            //VRC_AvatarDescriptor desc = mySource.GetComponent<VRC_AvatarDescriptor>();
            //desc.baseAnimationLayers[4].animatorController = AssetDatabase.LoadAssetAtPath<RuntimeAnimatorController>($"Assets/Chuki/Movement/Controllers/FX_{ExpressionSet}.controller");

            // TODO Automate the Enableing/Disbaled of Blink / LookingUp/Down
            //Debug.Log(desc.customEyeLookSettings.eyelidsLookingUp);
        }
        void ChangeValveIndex(string ValveIndex)
        {
            var sdesc = new SerializedObject(GameObject.Find("My Chuki").GetComponent<VRC_AvatarDescriptor>());
            var SGesture = sdesc.FindProperty("baseAnimationLayers");
            SGesture.GetArrayElementAtIndex(2).FindPropertyRelative("animatorController").objectReferenceValue = AssetDatabase.LoadAssetAtPath<RuntimeAnimatorController>($"Assets/Chuki/Movement/Controllers/Gesture{ValveIndex}.controller");

            sdesc.ApplyModifiedProperties();
        }
        void ChukiTmpStart() // Startup: Create Preview Chuki
        {
            // declare variables
            GameObject tmpChukiObject, myBody;
            Material test;
            // Search hirearchy for a previously generated Preview Chuki
            tmpChukiObject = GameObject.Find("Armature");
            if (!tmpChukiObject) // no Preview Chuki found, generate a new one.
            {
                // Add Chuki from Prefab
                ChukiInstallerAssets.AddNewPrefab("Base", "My Chuki");
                var asset = AssetDatabase.LoadAssetAtPath<GameObject>($"Assets/Chuki/Scene Items/Scene Items.prefab");
                var prefab = PrefabUtility.InstantiatePrefab(asset) as GameObject;
                ChukiCustomizer.ChukiHairSwap(1, false, false, "tmp");

                // copy new material and assign it to body mesh
                myBody = GameObject.Find("Body");
                test = AssetDatabase.LoadAssetAtPath($"Assets/Chuki/MyChukis/tmp/Body-Poi8.1_Toon_Opaque.mat", typeof(Material)) as Material;
                myBody.GetComponent<Renderer>().sharedMaterial = test;

                // copy new material and assign it to Crystals mesh
                myBody = GameObject.Find("Crystals");
                test = AssetDatabase.LoadAssetAtPath($"Assets/Chuki/MyChukis/tmp/Crystals.mat", typeof(Material)) as Material;
                myBody.GetComponent<Renderer>().sharedMaterial = test;

                // Set menu Option to 1 to fix Menu Loop
                menuToggle = 1;
            }
            else // User has a Chuki on Scene
            {
                // TODO: I don't know what to do here yet c:
            }
        }
        void ChukiTmpPreview() // Swapping Hairstyles/breasts. Destroy and display new Preview Chuki
        {
            //GameObject tmpChukiObject;
            //tmpChukiObject = GameObject.Find("tmpChuki");
            //if (tmpChukiObject)
            //{
            //    DestroyImmediate(tmpChukiObject, false);
            //}
            //chukiGenerated += chukiHairOptions[chukiHairIndex];
            if (chukiBraid == true) { chukiGenerated += "Braid"; }
            if (chukiBreast == true) { chukiGenerated += "Breast"; }
            ChukiInstallerAssets.AddNewPrefab(chukiGenerated, "tmpChuki");

            if (chukiBraid == false)
            { // Disable objects when no braid Present
                GameObject tmpChukiObject1;
                tmpChukiObject1 = GameObject.Find("Neck.Braid");
                if (tmpChukiObject1)
                {
                    tmpChukiObject1.transform.localScale = new Vector3(0.1f, 0.1f, 0.1f);
                    tmpChukiObject1.transform.position = new Vector3(0f, 0.0976f, 0.0081f);
                    tmpChukiObject1.transform.localRotation = Quaternion.Euler(-90f, 0, 0);
                    tmpChukiObject1.SetActive(false);
                }
                tmpChukiObject1 = GameObject.Find("Tail.2.Collider");
                tmpChukiObject1.SetActive(false);
                tmpChukiObject1 = GameObject.Find("Tail.3.Collider");
                tmpChukiObject1.SetActive(false);
                tmpChukiObject1 = GameObject.Find("Tail.4.Collider");
                tmpChukiObject1.SetActive(false);
                tmpChukiObject1 = GameObject.Find("Hair.Braid.Script");
                if (tmpChukiObject1)
                {
                    tmpChukiObject1.SetActive(false);
                }
            }
            chukiGenerated = string.Empty;
        }
        public void AlignViewToObject(GameObject viewObject, bool Mode)
        {
            //TODO: move cameras around based on race and height
            //viewObject.transform.localPosition = 

            // get the view reference
            SceneView view = SceneView.lastActiveSceneView;
            // align the scene camera to the transform
            view.orthographic = Mode;

            //Debug.Log(view.cameraDistance);
            view.AlignViewToObject(viewObject.transform); //viewObject is the gameobject you want to align the view to
            if (Mode)
            {
                //view.AlignViewToObject(GameObject.Find("My Chuki").transform);
                //Debug.Log("Aligned");
                //Debug.Log(view.size);
                view.size = (1.8f * (float.Parse(chukiHeightUnity) * 0.6665f));
                //Debug.Log(view.size);
            }
        }
    }
}