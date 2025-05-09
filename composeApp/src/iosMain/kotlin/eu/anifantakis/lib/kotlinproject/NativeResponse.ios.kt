package eu.anifantakis.lib.kotlinproject

// instead of adding directly here 100 in ios, we will get this from swift
actual fun getNativeResponse(input: Int): Int {
    //return input + 100
    return nativeProvider?.getNativeResponse(input)
        ?: throw IllegalStateException("NativeResponseProvider not set")
}

// Create a native response provider interface
interface NativeResponseProvider {
    fun getNativeResponse(input: Int): Int
}

// Add this variable to store the Swift implementation
private var nativeProvider: NativeResponseProvider? = null

// Add this function to be called from Swift
fun setNativeResponseProvider(provider: NativeResponseProvider) {
    nativeProvider = provider
}