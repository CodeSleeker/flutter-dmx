package com.example.flutter_dmx.models

data class DmxCommand (
    val id: Int,
    val area: String,
    val name: String,
    val brightness: Int,
    val color: List<Int>
)