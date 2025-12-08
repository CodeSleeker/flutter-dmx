package com.example.flutter_dmx.models

data class SceneStep (
    val durationMs: Int,
    val commands: List<DmxCommand>,
)