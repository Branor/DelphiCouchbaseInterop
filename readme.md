# Using the Couchbase .NET SDK from Delphi

This is a simple POC project for using the Couchbase .NET SDK in Delphi through COM interop. It uses a slim facade to expose the functionality of the SDK. Since this is just a POC, the facade class defaults to connecting to the 'default' bucket on localhost.

Either build the .NET project first with Register COM Interop checked, or use `regasm /codebase <path to DLL>` to register the .NET assembly with COM.
