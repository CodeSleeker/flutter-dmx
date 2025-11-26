package com.example.flutter_dmx.models

data class DmxFixture (
    val id: Int,
    val name: String,
    val address: Int,
    val area: String,
    val channel: Int,
    val colorMode: String,
    val count: Int,
    val addressMode: String
)