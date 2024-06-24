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
using System.Linq;

namespace ChukiHelper
{
    public class UI
    {
        public static void Separator(bool size)
        {
            if (size) { GUILayout.Space(10); }
            Rect r = EditorGUILayout.GetControlRect(GUILayout.Height(2));
            r.height = 2;
            r.x = 25;
            r.width -= 50;
            EditorGUI.DrawRect(r, new Color(0, 0, 0, 0.15f));
            if (size) { GUILayout.Space(10); }

        }
        //public static void AddMenuItemForCrystals(GenericMenu menu, string menuPath, Mesh currentCrystal, Mesh selectedCrystals)
        //{
        //    GameObject Crystals;
        //    menu.AddItem(new GUIContent(menuPath), currentCrystal.Equals(selectedCrystals), DoAction.SwapCrystalsMesh(selectedCrystals));
        //}
    }
    public class DoAction
    {
        public static string[] GetCrystalList(GameObject obj)
        {
            SkinnedMeshRenderer renderer = obj.GetComponent<SkinnedMeshRenderer>();
            Mesh m = renderer.sharedMesh;
            string[] arr;
            arr = new string[m.blendShapeCount];
            int j = 0;
            for (int i = 0; i < m.blendShapeCount;)
            {
                string s = m.GetBlendShapeName(i);
                if (s.Contains("=== ACCESSORIES ==="))
                {
                    break;
                }
                else
                {
                    s = s.Replace("_HIDE", "");
                    s = s.Replace("_", " ");
                    arr[i] = s;
                    i++;
                    j++;
                }
            }

            string[] finalArr;
            finalArr = new string[j];

            for (int k = 0;  k < j; k++)
            {
                finalArr[k] = arr[k];
            }
            
            return finalArr;
        }
        public static string[] GetBlendShapeSizes(GameObject obj)
        {
            bool startTracking = false;
            SkinnedMeshRenderer renderer = obj.GetComponent<SkinnedMeshRenderer>();
            Mesh m = renderer.sharedMesh;
            string[] arr;
            arr = new string[m.blendShapeCount];
            int RealArrayLenght = 0;
            int StartingInteger = 0;

            for (int i = 0; i < m.blendShapeCount; i++)
            {
                string s = m.GetBlendShapeName(i);
                if (s.Contains("=== SIZES ==="))
                {
                    startTracking = true;
                } else if(startTracking == true)
                {
                    char ch = '_';
                    int firstUnderscore = s.IndexOf(ch);
                    s = s.Substring(0, firstUnderscore);
                    arr[i] = s;
                    RealArrayLenght++;
                    if (StartingInteger == 0)
                    {
                        StartingInteger = i;
                    }
                }
            }

            string[] finalArr;
            finalArr = new string[RealArrayLenght];

            for (int k = 0; k < RealArrayLenght; k++)
            {
                finalArr[k] = arr[StartingInteger];
                StartingInteger++;
            }

            return arr;
        }
        public static string[] GetBlendShapeSizesTrunc(GameObject obj)
        {
            bool startTracking = false;
            SkinnedMeshRenderer renderer = obj.GetComponent<SkinnedMeshRenderer>();
            Mesh m = renderer.sharedMesh;
            string[] arr;
            arr = new string[m.blendShapeCount];
            int RealArrayLenght = 0;
            int StartingInteger = 0;

            for (int i = 0; i < m.blendShapeCount; i++)
            {
                string s = m.GetBlendShapeName(i);
                if (s.Contains("=== SIZES ==="))
                {
                    startTracking = true;
                }
                else if (startTracking == true)
                {
                    //char ch = '_';
                    //int firstUnderscore = s.IndexOf(ch);
                    //s = s.Substring(0, firstUnderscore);
                    arr[i] = s;
                    RealArrayLenght++;
                    if (StartingInteger == 0)
                    {
                        StartingInteger = i;
                    }
                }
            }

            string[] finalArr;
            finalArr = new string[RealArrayLenght];

            for (int k = 0; k < RealArrayLenght; k++)
            {
                finalArr[k] = arr[StartingInteger];
                StartingInteger++;
            }

            return finalArr;
        }
        public static string[] GetBodyBlendShapes(GameObject obj)
        {
            bool startTracking = false;
            SkinnedMeshRenderer renderer = obj.GetComponent<SkinnedMeshRenderer>();
            Mesh m = renderer.sharedMesh;
            string[] arr;
            arr = new string[m.blendShapeCount];
            //int j = 0;
            //Debug.Log(startTracking);
            for (int i = 0; i < m.blendShapeCount;)
            {
                string s = m.GetBlendShapeName(i);
                if (s.Contains("=== BODY MOD ==="))
                {
                    //Debug.Log(startTracking);
                    startTracking = true;
                    //break;
                } else if (s.Contains("=== ACCESSORIES ==="))
                {
                    startTracking = false;
                }
                else if (startTracking == true)
                {
                    //char ch = '_';
                    //int firstUnderscore = s.IndexOf(ch);
                    //s = s.Substring(0, firstUnderscore);
                    arr[i] = s;
                    //Debug.Log(s);
                }
                i++;
            }

            return arr;
        }
        public static float GetBlendShapeValue(SkinnedMeshRenderer skinnedMeshRenderer, Mesh mesh, string BlendShapeToFind)
        {
            float BlendShapeValue;

            int BlendShapeIndex = mesh.GetBlendShapeIndex(BlendShapeToFind);
            BlendShapeValue = skinnedMeshRenderer.GetBlendShapeWeight(BlendShapeIndex);

            return BlendShapeValue;
        }
        public static float GetBlendShapeValueCombo(SkinnedMeshRenderer skinnedMeshRenderer, Mesh mesh, string BlendShapeLarge, string BlendShapeSmall)
        {
            float BlendShapeValue;

            int BlendShapeIndexLarge = mesh.GetBlendShapeIndex(BlendShapeLarge);
            int BlendShapeIndexSmall = mesh.GetBlendShapeIndex(BlendShapeSmall);
            BlendShapeValue = skinnedMeshRenderer.GetBlendShapeWeight(BlendShapeIndexLarge);

            if (BlendShapeValue > 0)
            {
                BlendShapeValue = (BlendShapeValue / 2) + 50;
            }
            else
            {
                BlendShapeValue = -(skinnedMeshRenderer.GetBlendShapeWeight(BlendShapeIndexSmall) / 2) + 50;
            }

            return BlendShapeValue;
        }
        public static void ChangeBlendShapeSizes(GameObject obj, string bodypart, float ShapeKeyValue)
        {
            SkinnedMeshRenderer renderer = obj.GetComponent<SkinnedMeshRenderer>();
            Mesh mesh = renderer.sharedMesh;

            string[] CrystalList = GetCrystalList(obj);

            string[] Crystals = GetBlendShapeSizes(obj);
            int i = 0;
            foreach (string SizeBlendShape in Crystals)
            {
                if (SizeBlendShape == bodypart)
                {
                    string s = mesh.GetBlendShapeName(i);
                    string CrystalName = s.Substring(bodypart.Length+1);
                    CrystalName = CrystalName.Replace("_small", "");
                    CrystalName = CrystalName.Replace("_large", "");
                    CrystalName = CrystalName.Replace("_", " ");

                    if (s.Contains("small") || s.Contains("large")) 
                    { // do a ComboChange
                        if (ShapeKeyValue > 0 && ShapeKeyValue < 50)
                        {
                            var chukiBlendshapeFloatValueFix = 100 - (ShapeKeyValue * 2);
                            if (s.Contains("small"))
                            {
                                int j = 0;
                                foreach (string Crystal in CrystalList)
                                {
                                    if (Crystal == CrystalName)
                                    {
                                        if (renderer.GetBlendShapeWeight(j) == 0)
                                        {
                                            renderer.SetBlendShapeWeight(i, chukiBlendshapeFloatValueFix);
                                            renderer.SetBlendShapeWeight(mesh.GetBlendShapeIndex(bodypart + "_" + CrystalName.Replace(" ", "_") + "_large"), 0f);
                                        }
                                    }
                                    j++;
                                }
                            } else
                            {
                                renderer.SetBlendShapeWeight(mesh.GetBlendShapeIndex(bodypart + "_" + CrystalName.Replace(" ", "_") + "_large"), 0f);
                            }
                        }
                        else if (ShapeKeyValue > 49 && ShapeKeyValue < 100)
                        {
                            var chukiBlendshapeFloatValueFix = (ShapeKeyValue - 50) * 2;
                            if (s.Contains("large"))
                            {
                                int j = 0;
                                foreach (string Crystal in CrystalList)
                                {
                                    if (Crystal == CrystalName)
                                    {
                                        if (renderer.GetBlendShapeWeight(j) == 0)
                                        {
                                            renderer.SetBlendShapeWeight(i, chukiBlendshapeFloatValueFix);
                                            renderer.SetBlendShapeWeight(mesh.GetBlendShapeIndex(bodypart + "_" + CrystalName.Replace(" ", "_") + "_small"), 0f);
                                        }
                                    }
                                    j++;
                                }
                            } else
                            {
                                renderer.SetBlendShapeWeight(mesh.GetBlendShapeIndex(bodypart + "_" + CrystalName.Replace(" ", "_") + "_small"), 0f);
                            }
                        }
                        else if (ShapeKeyValue == 100)
                        {
                            if (s.Contains("large"))
                            {
                                int j = 0;
                                foreach (string Crystal in CrystalList)
                                {
                                    if (Crystal == CrystalName)
                                    {
                                        if (renderer.GetBlendShapeWeight(j) == 0)
                                        {
                                            renderer.SetBlendShapeWeight(i, 100f);
                                            renderer.SetBlendShapeWeight(mesh.GetBlendShapeIndex(bodypart + "_" + CrystalName.Replace(" ", "_") + "_small"), 0f);
                                        }
                                    }
                                    j++;
                                }
                            }
                        }
                        else
                        {
                            if (s.Contains("small"))
                            {
                                int j = 0;
                                foreach (string Crystal in CrystalList)
                                {
                                    if (Crystal == CrystalName)
                                    {
                                        if (renderer.GetBlendShapeWeight(j) == 0)
                                        {
                                            renderer.SetBlendShapeWeight(i, 100f);
                                            renderer.SetBlendShapeWeight(mesh.GetBlendShapeIndex(bodypart + "_" + CrystalName.Replace(" ", "_") + "_large"), 0f);
                                        }
                                    }
                                    j++;
                                }
                            }
                        }
                    } 
                    else // Do a Single Change
                    {
                        int j = 0;

                        foreach (string Crystal in CrystalList)
                        {
                            if (Crystal == CrystalName)
                            {
                                if (renderer.GetBlendShapeWeight(j) == 0)
                                {
                                    renderer.SetBlendShapeWeight(i, ShapeKeyValue);
                                }
                            }
                            j++;
                        }
                        
                    }
                    
                }
                i++;
            }
        }
        public static void UpdateBlendShapeSizes(GameObject obj, string BlendShapeName, bool Status, GameObject myChukiBody)
        {
            SkinnedMeshRenderer renderer = obj.GetComponent<SkinnedMeshRenderer>();
            Mesh mesh = renderer.sharedMesh;

            if (Status == false) // Disable Crystal, zero out blendshapes
            {
                for (int i = 0; i < mesh.blendShapeCount; i++)
                {
                    string s = mesh.GetBlendShapeName(i);
                    if (s.Contains(BlendShapeName) && !s.Contains("_HIDE"))
                    {
                        renderer.SetBlendShapeWeight(i, 0f);
                    }
                }
            }
            // This was kept in the DrawCrystals section, since it requires grabbing data and I felt lazyyy
            /* else // Enable Crystal, match to body blendshapes
            {
                for (int i = 0; i < mesh.blendShapeCount; i++)
                {
                    string s = mesh.GetBlendShapeName(i);
                    if (s.Contains(BlendShapeName) && !s.Contains("_HIDE"))
                    {
                        
                    }
                }
                //string[] BodyBlendshapes = ChukiHelper.DoAction.GetBodyBlendShapes(myChukiBody);
                //ChukiHelper.DoAction.ChangeBlendShapeSizes(obj, "Leg", legSize);
            }*/

            
        }
        public static void SetBlendShapeSize(GameObject obj, string BlendShapeName, float BlendShapeValue)
        {
            SkinnedMeshRenderer renderer = obj.GetComponent<SkinnedMeshRenderer>();
            Mesh mesh = renderer.sharedMesh;

            for (int i = 0; i < mesh.blendShapeCount; i++)
            {
                string s = mesh.GetBlendShapeName(i);
                if (s == BlendShapeName)
                {
                    renderer.SetBlendShapeWeight(i, BlendShapeValue);
                }
            }
        }
        public static void SetBlendShapeSize(GameObject obj, string BlendShapeName, string BlendShapeValue)
        {
            float BlendShapeFloat;
            switch (BlendShapeValue)
            {
                case "HIDE":
                case "hide":
                    BlendShapeFloat = 100f;
                    break;
                case "SHOW":
                case "show":
                    BlendShapeFloat = 0f;
                    break;
                default:
                    BlendShapeFloat = 0f;
                    break;
            }
            ChukiHelper.DoAction.SetBlendShapeSize(obj, BlendShapeName, BlendShapeFloat);
        }
        public static void SetBlendShapeSize(GameObject obj, string BlendShapeName, bool BlendShapeValue)
        {
            float BlendShapeFloat;
            switch (BlendShapeValue)
            {
                case false:
                    BlendShapeFloat = 100f;
                    break;
                case true:
                    BlendShapeFloat = 0f;
                    break;
                default:
                    BlendShapeFloat = 0f;
                    break;
            }
            ChukiHelper.DoAction.SetBlendShapeSize(obj, BlendShapeName, BlendShapeFloat);
        }
        //public static void SwapCrystalsMesh(Mesh newCrystalMesh)
        //{
        //    Mesh m_Color;
        //    m_Color = (Mesh)newCrystalMesh;
        //
        //    return m_Color;
        //}
    }
}