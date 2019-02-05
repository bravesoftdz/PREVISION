Unit PRE601;
// Inicio Uso Est�ndares         : 01/08/2011
// Unidad                        : PRE601
// Formulario                    : ProgCesaSinLiqui
// Fecha de Creaci�n             : 12/01/2018
// Autor                         : Jes�s Castillo Pampas.
// Objetivo                      : Formulario para visualizar y/o anular el estado de todas las programaciones registradas
// HPC_201801_PRE                : Generaci�n de Reporte de Cesantes sin Liquidaci�n

// Inicio HPC_201801_PRE
// Generaci�n de Reporte de Cesantes sin Liquidaci�n
Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, Grids, Wwdbigrd, Wwdbgrid, wwdbedit, Wwdbspin, Mask, Wwdbdlg,
   StdCtrls, ExtCtrls, wwdblook, fcButton, fcImgBtn, fcShapeBtn, DB,
   wwdbdatetimepicker, ComCtrls;

Type
   TProgCesaSinLiqui = Class(TForm)
    gbfiltra: TGroupBox;
    Label3: TLabel;
    Label1: TLabel;
    fcShapeBtn1: TfcShapeBtn;
    lblUltProgramacion: TLabel;
    dtpFecProgra: TwwDBDateTimePicker;
      Procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure fcShapeBtn1Click(Sender: TObject);
    procedure RefrescaLabelFecha;
   Private
    { Private declarations }
   Public
    { Public declarations }
   End;

Var
   ProgCesaSinLiqui: TProgCesaSinLiqui;

Implementation

Uses PREDM;

{$R *.dfm}

Procedure TProgCesaSinLiqui.FormActivate(Sender: TObject);
Begin
   RefrescaLabelFecha;
End;

procedure TProgCesaSinLiqui.RefrescaLabelFecha;
Var
   xsql: String;
Begin
   xsql := 'SELECT USUREG,FECREG,FECPRO,USUANU,FECANU FROM PRE_PRO_REP_CES_SLI_DET WHERE ESTADO='+QuotedStr('0')+
           ' ORDER BY FECREG DESC';
   dm1.cdsQry1.Close;
   dm1.cdsQry1.DataRequest(xsql);
   dm1.cdsQry1.Open;
   If (dm1.cdsQry1.RecordCount>0) Then
   Begin
     Label1.Caption :='�ltima Programaci�n Registrada : ';
     lblUltProgramacion.Caption:=DM1.cdsQry1.FieldByname('FECPRO').AsString;
   End
   Else
   Begin
     Label1.Caption :='';
     lblUltProgramacion.Caption:='';
   End;
End;

procedure TProgCesaSinLiqui.FormCreate(Sender: TObject);
begin
     dtpFecProgra.Date := Date+1;
end;

procedure TProgCesaSinLiqui.fcShapeBtn1Click(Sender: TObject);
Var
   xsql: String;
   DiaProgramado, MesProgramado, AnioProgramado : Word;
   DiaActual, MesActual, AnioActual : Word;
begin

   DecodeDate(dtpFecProgra.Date, AnioProgramado, MesProgramado, DiaProgramado);
   DecodeDate(DM1.FechaSys, AnioActual, MesActual, DiaActual);
   //DecodeDate(prueba, AnioActual, MesActual, DiaActual);

   If (Trim(dtpFecProgra.Text) = '') Then
   Begin
      ShowMessage('Ingrese fecha de programaci�n');
      exit;
   End;

   If (dtpFecProgra.Date <= DM1.FechaSys) Then
   //If (dtpFecProgra.Date <= prueba) Then
   Begin
      ShowMessage('Solo se puede programar para fechas mayores a la actual');
      exit;
   End;

   If MesActual <> 12 Then
   Begin
      If (dtpFecProgra.Date-DM1.FechaSys)>30 Then
      Begin                              
          ShowMessage('La fecha tope de programaci�n es de 30 dias m�s que la fecha actual');
          exit;
      End;
   End;
   //exit;
   xsql := 'SELECT USUREG,FECPRO FROM PRE_PRO_REP_CES_SLI_DET WHERE ESTADO='+QuotedStr('0')+' AND FECPRO='+QuotedStr(DateToStr(dtpFecProgra.date));
   dm1.cdsQry.Close;
   dm1.cdsQry.DataRequest(xsql);
   dm1.cdsQry.Open;

   If (dm1.cdsQry.RecordCount > 0) Then
   Begin
     ShowMessage('El usuario '+DM1.cdsQry.FieldByname('USUREG').AsString+' ya registr� una programaci�n para esa fecha');
     exit;
   End
   Else
   Begin
     xsql := 'INSERT INTO PRE_PRO_REP_CES_SLI_DET (ESTADO,USUREG,FECREG,FECPRO) VALUES('
            +QuotedStr('0')+','
            +QuotedStr(DM1.wUsuario)+', SYSDATE, '
            +QuotedStr(DateToStr(dtpFecProgra.date))+')';
     Try
       DM1.DCOM1.AppServer.EjecutaSql(xsql);
     Except
       ShowMessage('Existen problemas para registrar la programaci�n de la ejecuci�n del proceso');
       exit;
     End;
   End;
   RefrescaLabelFecha; 
end;

End.
// Fin HPC_201801_PRE
