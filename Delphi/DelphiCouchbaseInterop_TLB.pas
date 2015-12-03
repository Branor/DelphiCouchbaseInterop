unit DelphiCouchbaseInterop_TLB;

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
// File generated on 12/3/2015 12:58:56 PM from Type Library described below.

// ************************************************************************  //
// Type Lib: c:\Work\Couchbase\DotNet\DelphiCouchbaseInterop\DelphiCouchbaseInterop\bin\Debug\DelphiCouchbaseInterop.tlb (1)
// LIBID: {7F0B0160-E22B-4F35-A07A-193A134DAC7C}
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
  DelphiCouchbaseInteropMajorVersion = 1;
  DelphiCouchbaseInteropMinorVersion = 0;

  LIBID_DelphiCouchbaseInterop: TGUID = '{7F0B0160-E22B-4F35-A07A-193A134DAC7C}';

  IID_ICouchbaseFacade: TGUID = '{CC843972-BF02-4453-9C39-6B36E2E1CDFA}';
  CLASS_CouchbaseFacade: TGUID = '{961E66E7-8DF5-4366-AAF6-F84037D26B05}';
type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  ICouchbaseFacade = interface;
  ICouchbaseFacadeDisp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  CouchbaseFacade = ICouchbaseFacade;


// *********************************************************************//
// Interface: ICouchbaseFacade
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {CC843972-BF02-4453-9C39-6B36E2E1CDFA}
// *********************************************************************//
  ICouchbaseFacade = interface(IDispatch)
    ['{CC843972-BF02-4453-9C39-6B36E2E1CDFA}']
    function Get(const key: WideString): OleVariant; safecall;
    procedure Upsert(const key: WideString; value: OleVariant); safecall;
  end;

// *********************************************************************//
// DispIntf:  ICouchbaseFacadeDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {CC843972-BF02-4453-9C39-6B36E2E1CDFA}
// *********************************************************************//
  ICouchbaseFacadeDisp = dispinterface
    ['{CC843972-BF02-4453-9C39-6B36E2E1CDFA}']
    function Get(const key: WideString): OleVariant; dispid 1610743808;
    procedure Upsert(const key: WideString; value: OleVariant); dispid 1610743809;
  end;

// *********************************************************************//
// The Class CoCouchbaseFacade provides a Create and CreateRemote method to          
// create instances of the default interface ICouchbaseFacade exposed by              
// the CoClass CouchbaseFacade. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCouchbaseFacade = class
    class function Create: ICouchbaseFacade;
    class function CreateRemote(const MachineName: string): ICouchbaseFacade;
  end;

implementation

uses System.Win.ComObj;

class function CoCouchbaseFacade.Create: ICouchbaseFacade;
begin
  Result := CreateComObject(CLASS_CouchbaseFacade) as ICouchbaseFacade;
end;

class function CoCouchbaseFacade.CreateRemote(const MachineName: string): ICouchbaseFacade;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CouchbaseFacade) as ICouchbaseFacade;
end;

end.
