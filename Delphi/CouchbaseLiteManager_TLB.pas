unit CouchbaseLiteManager_TLB;

// ************************************************************************ //
// WARNING                                                                    
// -------                                                                    
// The types declared in this file were generated from data read from a       
// Type Library. If this type library is explicitly or indirectly (via        
// another type library referring to this type library) re-imported, or the   
// 'Refresh' command of the Type Library Editor activated while editing the   
// Type Library, the contents of this file will be regenerated and all        
// manual modifications will be lost.                                         
// ************************************************************************ //

// $Rev: 52393 $
// File generated on 11/30/2015 1:14:58 PM from Type Library described below.

// ************************************************************************  //
// Type Lib: C:\Work\Couchbase\CouchbaseLite-Delphi-ComInterop\CouchbaseLiteManager\bin\Debug\CouchbaseLiteManager.tlb (1)
// LIBID: {A3CE478A-9C98-4E41-9697-E9F1D84F8932}
// LCID: 0
// Helpfile: 
// HelpString: 
// DepndLst: 
//   (1) v2.0 stdole, (C:\Windows\SysWOW64\stdole2.tlb)
//   (2) v2.4 mscorlib, (C:\Windows\Microsoft.NET\Framework\v4.0.30319\mscorlib.tlb)
// SYS_KIND: SYS_WIN32
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
{$ALIGN 4}

interface

uses Winapi.Windows, mscorlib_TLB, System.Classes, System.Variants, System.Win.StdVCL, Vcl.Graphics, Vcl.OleServer, Winapi.ActiveX;
  


// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:        
//   Type Libraries     : LIBID_xxxx                                      
//   CoClasses          : CLASS_xxxx                                      
//   DISPInterfaces     : DIID_xxxx                                       
//   Non-DISP interfaces: IID_xxxx                                        
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  CouchbaseLiteManagerMajorVersion = 1;
  CouchbaseLiteManagerMinorVersion = 0;

  LIBID_CouchbaseLiteManager: TGUID = '{A3CE478A-9C98-4E41-9697-E9F1D84F8932}';

  IID_ICouchbaseLiteFacade: TGUID = '{02113B7A-4864-4520-94CD-1542A2B0FF05}';
  CLASS_CouchbaseLiteFacade: TGUID = '{6DF7E4DA-7A81-457A-B0AF-7B80D7F10694}';
type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  ICouchbaseLiteFacade = interface;
  ICouchbaseLiteFacadeDisp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  CouchbaseLiteFacade = ICouchbaseLiteFacade;


// *********************************************************************//
// Interface: ICouchbaseLiteFacade
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {02113B7A-4864-4520-94CD-1542A2B0FF05}
// *********************************************************************//
  ICouchbaseLiteFacade = interface(IDispatch)
    ['{02113B7A-4864-4520-94CD-1542A2B0FF05}']
    procedure StartSyncGateway(const url: WideString); safecall;
    procedure StopSyncGateway; safecall;
    function Insert(const docId: WideString; const propertiesJson: WideString): WideString; safecall;
    function Get(const docId: WideString): WideString; safecall;
    function Update(const documentJson: WideString; const updatedPropertiesJsons: WideString): WideString; safecall;
    function Delete(const documentId: WideString): WordBool; safecall;
  end;

// *********************************************************************//
// DispIntf:  ICouchbaseLiteFacadeDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {02113B7A-4864-4520-94CD-1542A2B0FF05}
// *********************************************************************//
  ICouchbaseLiteFacadeDisp = dispinterface
    ['{02113B7A-4864-4520-94CD-1542A2B0FF05}']
    procedure StartSyncGateway(const url: WideString); dispid 1610743808;
    procedure StopSyncGateway; dispid 1610743809;
    function Insert(const docId: WideString; const propertiesJson: WideString): WideString; dispid 1610743810;
    function Get(const docId: WideString): WideString; dispid 1610743811;
    function Update(const documentJson: WideString; const updatedPropertiesJsons: WideString): WideString; dispid 1610743812;
    function Delete(const documentId: WideString): WordBool; dispid 1610743813;
  end;

// *********************************************************************//
// The Class CoCouchbaseLiteFacade provides a Create and CreateRemote method to          
// create instances of the default interface ICouchbaseLiteFacade exposed by              
// the CoClass CouchbaseLiteFacade. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCouchbaseLiteFacade = class
    class function Create: ICouchbaseLiteFacade;
    class function CreateRemote(const MachineName: string): ICouchbaseLiteFacade;
  end;

implementation

uses System.Win.ComObj;

class function CoCouchbaseLiteFacade.Create: ICouchbaseLiteFacade;
begin
  Result := CreateComObject(CLASS_CouchbaseLiteFacade) as ICouchbaseLiteFacade;
end;

class function CoCouchbaseLiteFacade.CreateRemote(const MachineName: string): ICouchbaseLiteFacade;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CouchbaseLiteFacade) as ICouchbaseLiteFacade;
end;

end.
