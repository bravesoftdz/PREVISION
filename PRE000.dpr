Program PRE000;
// 29 de Setiembre del 2005
uses
  Forms,
  Windows,
  Msgdlgs,
  PREDM in 'PREDM.pas' {DM1: TDataModule},
  PRE001 in 'PRE001.pas' {FPrincipal},
  PRE233 in 'PRE233.pas' {FNueExpben},
  PRE229 in 'PRE229.pas' {FCalculoLiquidacion},
  PRE230 in 'PRE230.pas' {FPrevioLiquidacion},
  PRE395 in 'PRE395.pas' {FLiqAnteriores},
  PRE311 in 'PRE311.pas' {FManReclamos},
  PRE861 in 'PRE861.pas' {FrepXTipPag},
  PRE227 in 'PRE227.pas' {FBuscaLiqBeneficios},
  PRE232 in 'PRE232.pas' {FExpedientebeneficio},
  PRE247 in 'PRE247.pas' {Fretencionjudicial},
  PRE249 in 'PRE249.pas' {Fnuegenofi},
  PRE252 in 'PRE252.pas' {Fcobliq},
  PRE570 in 'PRE570.pas' {FRepLibAhorro},
  PRE228 in 'PRE228.pas' {FBuscaExpediente},
  PRE241 in 'PRE241.pas' {FLiquidacionBeneficio},
  PRE242 in 'PRE242.pas' {FModificaformadepago},
  PRE244 in 'PRE244.pas' {FReliquidacionBeneficios},
  PRE254 in 'PRE254.pas' {FModdeudos},
  PRE255 in 'PRE255.pas' {Fmodforpagdeu},
  PRE234 in 'PRE234.pas' {FBusAso},
  PRE236 in 'PRE236.pas' {fMstCre},
  PRE237 in 'PRE237.pas' {fmstapo},
  PRE235 in 'PRE235.pas' {FModExpben},
  PRE253 in 'PRE253.pas' {FSeguimiento},
  PRE248 in 'PRE248.pas' {Fnueretjud},
  PRE251 in 'PRE251.pas' {Fnueofi},
  PRE256 in 'PRE256.pas' {FFamiliares},
  PRE257 in 'PRE257.pas' {Fmanfam},
  PRE258 in 'PRE258.pas' {Fbuscareliquidacion},
  PRE238 in 'PRE238.pas' {Frepxtipben},
  PRE927 in 'PRE927.pas' {FRepliqxDpto},
  PRE928 in 'PRE928.pas' {FNivApo},
  PRE929 in 'PRE929.pas' {Fcuocrexben},
  PRE259 in 'PRE259.pas' {Fmancardes},
  PRE263 in 'PRE263.pas' {Fnuecardes},
  PRE264 in 'PRE264.pas' {Fapecardes},
  PRE265 in 'PRE265.pas' {Fingdeucar},
  PRE245 in 'PRE245.pas' {FNueCont},
  PRE268 in 'PRE268.pas' {FrepxtipbenCon},
  PRE239 in 'PRE239.pas' {FDatFam},
  PRE240 in 'PRE240.pas' {FManFami},
  PRE269 in 'PRE269.pas' {FlibAho},
  PRE270 in 'PRE270.pas' {FLibAhoMod},
  PRE246 in 'PRE246.pas' {Fmodificacionresolucion},
  PRE280 in 'PRE280.pas' {Fprimanuit},
  PRE281 in 'PRE281.pas' {FManuit},
  PRE862 in 'PRE862.pas' {FRepResSex},
  PRE863 in 'PRE863.pas' {FRepResAnoSer},
  PRE271 in 'PRE271.pas' {Frepcrepen},
  ASO939 in 'ASO939.pas' {fCtrAcceso},
  PRE275 in 'PRE275.pas' {FMstObsOtrAre},
  PRE260 in 'PRE260.pas' {FMstLiqAnt},
  PRE273 in 'PRE273.pas' {fmstcueind},
  PRE272 in 'PRE272.pas' {Fprocueind},
  PRE282 in 'PRE282.pas' {Frepxtipbenxocu},
  PRE283 in 'PRE283.pas' {fmstdatrec},
  PRE284 in 'PRE284.pas' {Fmstfotder},
  PRE274 in 'PRE274.pas' {frepliqanu},
  PRE321 in 'PRE321.pas' {FImpResTec},
  PRE320 in 'PRE320.pas' {FMatResTec},
  PRE930 in 'PRE930.pas' {FCuentaInd},
  PRE931 in 'PRE931.pas' {fcueinddis},
  PRE932 in 'PRE932.pas' {Fresliqben},
  PRE276 in 'PRE276.pas' {Fcuocanfonsol},
  PRE935 in 'PRE935.pas' {FrmGeneraCtaIndividualPDF},
  PRE934 in 'PRE934.pas' {FrmListaCtaIndBloque},
  PRE933 in 'PRE933.pas' {FRMREPORTEPOSTRESST},
  PRE203 in 'PRE203.pas' {Fmantabret},
  PRE205 in 'PRE205.pas' {Fingdattabret},
  PRE206 in 'PRE206.pas' {Fmantabinv},
  PRE207 in 'PRE207.pas' {Fingdattabinv},
  PRE209 in 'PRE209.pas' {Fmantabcapdeu},
  PRE210 in 'PRE210.pas' {Fingdattabcapdeu},
  PRE211 in 'PRE211.pas' {Fmantabsep},
  PRE212 in 'PRE212.pas' {Fingdattabsep},
  PRE290 in 'PRE290.pas' {FRptPagBenXTipo},
  PRE291 in 'PRE291.pas' {FRptCartaDesignatario},
  PRE966 in 'PRE966.pas' {FrmAutxCenEdu},
  PRE936 in 'PRE936.pas' {Fctaindres},
  PRE937 in 'PRE937.pas' {Fctainddet},
  ASO962 in 'ASO962.pas' {FGenCheGerBen},
  PRE417 in 'PRE417.pas' {FRptPagBenDet},
  PRE530 in 'PRE530.pas' {FHojaTrabajoCampo},
  PRE277 in 'PRE277.pas' {Fmueautdesapo},
  PRE278 in 'PRE278.pas' {FMueNoTieAutDesApo},
  PRE213 in 'PRE213.pas' {Fanulacionexpediente},
  PRE214 in 'PRE214.pas' {Fanucardesignatario},
  PRE285 in 'PRE285.pas' {Fimpretjud},
  PRE286 in 'PRE286.pas' {Frepxtipdes},
  PRE287 in 'PRE287.pas' {Frepexpben},
  PRE288 in 'PRE288.pas' {fIndGestion},
  PRE289 in 'PRE289.pas' {Frepcardes},
  PRE279 in 'PRE279.pas' {Fnueseg},
  PRE292 in 'PRE292.pas' {FNueSegExp},
  PRE938 in 'PRE938.pas' {FLiqxTipBen},
  PRE020 in 'PRE020.pas' {FCtrlAcceso},
  PRE022 in 'PRE022.pas' {FCPassw},
  PRE939 in 'PRE939.pas' {FresliqconCADAPS},
  PRE940 in 'PRE940.pas' {FbAsoAplCCI},
  PRE901 in 'PRE901.pas' {FCboCausaCese: TFrame},
  PRE902 in 'PRE902.pas' {FCboTipoBeneficio: TFrame},
  PRE215 in 'PRE215.pas' {FrmMantenimientoCausaCese},
  PRE215a in 'PRE215a.pas' {FrmMantCausaCese},
  PRE301 in 'PRE301.pas' {FContaExtorno},
  COB903B in 'COB903B.pas' {fMotivoImpresion},
  PRE400 in 'PRE400.pas' {FTiempoLiq},
  PRE401 in 'PRE401.pas' {FExpeProc},
  PRE293 in 'PRE293.pas' {FexpSMSEMAIL},
  PRE294 in 'PRE294.pas' {fmscueind};

{$R *.RES}
Var
  HMutex: THandle;
Begin
  HMutex := CreateMutex (nil, False, 'OneCopyMutexPRE');
  If WaitForSingleObject (HMutex, 0) <> wait_TimeOut then
  Begin
    Application.Initialize;
    Application.Title := 'Previsión Social  ';
    Application.CreateForm(TDM1, DM1);
  Application.Run;
  End
  Else
    ErrorMsg('Modulo de Prevision Social', 'Ya se Encuentra en ejecución el Modulo');
End.
