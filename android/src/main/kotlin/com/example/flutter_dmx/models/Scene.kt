package com.example.flutter_dmx.models

data class Scene (
    val id: Int,
    val name: String,
    val steps: List<SceneStep>,
    val loop: Boolean
)