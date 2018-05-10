package org.lwjgl.engine.items;

import org.lwjgl.engine.graph.Material;
import org.lwjgl.engine.graph.Mesh;
import org.lwjgl.engine.graph.OBJLoader;
import org.lwjgl.engine.graph.Texture;
import org.lwjgl.engine.items.GameItem;

public class SkyBox extends GameItem {

    public SkyBox(String objModel, String textureFile) throws Exception {
        super();
        Mesh skyBoxMesh = OBJLoader.loadMesh(objModel);
        Texture skyBoxtexture = new Texture(textureFile);
        skyBoxMesh.setMaterial(new Material(skyBoxtexture, 0.0f));
        setMesh(skyBoxMesh);
        setPosition(0, 0, 0);
    }
}
