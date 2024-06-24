using UnityEditor;
using UnityEngine;
using UnityEngine.UIElements;
using UnityEditor.UIElements;
using System.Collections;
using UnityEngine.Animations;
using VRC.SDK3.Dynamics.Contact.Components;

public class Hotfix3to4 : EditorWindow
{
    [MenuItem("Tools/Chuki/Clean up Hotfix 3 to 4")]
    public static void ShowExample()
    {
        Hotfix3to4 wnd = GetWindow<Hotfix3to4>();
        wnd.titleContent = new GUIContent("Clean up from Hotfix 3 to 4");
    }

    public void OnGUI()
    {
        var asset = AssetDatabase.LoadAssetAtPath<GameObject>($"Assets/Chuki/Model/Amica.FBX");
        if (asset)
        {
            if (GUILayout.Button("Run Cleanup", GUILayout.Height(50)))
            {
                RunCleanup();
            }
        } else
        {
            GUILayout.Label("You're all set!");
        }
    }

    void RunCleanup()
    {
        string[] cleanupFolder = { "Assets/Chuki/Model/" };
        foreach (var asset in AssetDatabase.FindAssets("", cleanupFolder))
        {
            if (asset == "f046b75a688428c4ca70c8e3fa9745c2" || asset == "30e2b510afd380f43aeed858b38c6f57" || asset == "75636b3a903c03741a42a69e4b39aa77")
            {
                // Keep these files.
            }
            else
            {
                var path = AssetDatabase.GUIDToAssetPath(asset);
                AssetDatabase.DeleteAsset(path);
            };

        }
    }
}