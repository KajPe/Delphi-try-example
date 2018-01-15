unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Label1: TLabel;
    Label2: TLabel;
    RichEdit1: TRichEdit;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    Button15: TButton;
    Button16: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
  private
    { Private declarations }
    procedure clear();
    procedure pprint(s: String); overload;
    procedure pprint(s: String; b: Boolean); overload;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

//----------------------------------------------------------------------------
// Clear "code" window
procedure TForm1.clear();
begin
  with RichEdit1 do
  begin
    Clear;
    SelAttributes.Color := clWindowText;
    pprint('print("-- start --")');
    pprint('try');
  end;
end;

//----------------------------------------------------------------------------
// Print to "code" window
procedure TForm1.pprint(s: String);
begin
  pprint(s, False);
end;

//----------------------------------------------------------------------------
// Print to "code" window
procedure TForm1.pprint(s: String; b: Boolean);
begin
  with RichEdit1 do
  begin
    if not b then
    begin
      SelAttributes.Color := clWindowText;
      SelText := Format('%s'#13''#10'',[s]);
    end else
    begin
      SelAttributes.Color := clRed;
      SelText := Format('%s    <= NEVER PROCESSED!'#13''#10'',[s]);
    end;
  end;
end;

//----------------------------------------------------------------------------
// try - except
procedure TForm1.Button1Click(Sender: TObject);
begin
  clear;
  pprint('  print("try 1")');
  pprint('  print("try 2")');
  pprint('except');
  pprint('  print("except 1")', True);
  pprint('  print("except 2")', True);
  pprint('end');
  pprint('print("-- end --")');

  memo1.Lines.Clear;
  memo1.Lines.Add('-- start --');
  try
    memo1.Lines.Add('try 1');
    memo1.Lines.Add('try 2');
  except
    memo1.Lines.Add('except 1');
    memo1.Lines.Add('except 2');
  end;
  Memo1.Lines.Add('-- end --');
end;

//----------------------------------------------------------------------------
// try - finally
procedure TForm1.Button2Click(Sender: TObject);
begin
  clear;
  pprint('  print("try 1")');
  pprint('  print("try 2")');
  pprint('finally');
  pprint('  print("finally 1")');
  pprint('  print("finally 2")');
  pprint('end');
  pprint('print("-- end --")');

  memo1.Lines.Clear;
  memo1.Lines.Add('-- start --');
  try
    memo1.Lines.Add('try 1');
    memo1.Lines.Add('try 2');
  finally
    memo1.Lines.Add('finally 1');
    memo1.Lines.Add('finally 2');
  end;
  Memo1.Lines.Add('-- end --');
end;

//----------------------------------------------------------------------------
// try - raise - except
procedure TForm1.Button3Click(Sender: TObject);
begin
  clear;
  pprint('  print("try 1")');
  pprint('  raise Exception.Create("problems ..")');
  pprint('  print("try 2")',True);
  pprint('except');
  pprint('  print("except 1")');
  pprint('  print("except 2")');
  pprint('end');
  pprint('print("-- end --")');

  memo1.Lines.Clear;
  memo1.Lines.Add('-- start --');
  try
    memo1.Lines.Add('try 1');
    raise Exception.Create('raise');
    memo1.Lines.Add('try 2');
  except
    memo1.Lines.Add('except 1');
    memo1.Lines.Add('except 2');
  end;
  Memo1.Lines.Add('-- end --');
end;

//----------------------------------------------------------------------------
// try - raise - finally
procedure TForm1.Button4Click(Sender: TObject);
begin
  clear;
  pprint('  print("try 1")');
  pprint('  raise Exception.Create("problems ..")');
  pprint('  print("try 2")',True);
  pprint('finally');
  pprint('  print("finally 1")');
  pprint('  print("finally 2")');
  pprint('end');
  pprint('print("-- end --")', True);

  memo1.Lines.Clear;
  memo1.Lines.Add('-- start --');
  try
    memo1.Lines.Add('try 1');
    raise Exception.Create('problems ..');
    memo1.Lines.Add('try 2');
  finally
    memo1.Lines.Add('finally 1');
    memo1.Lines.Add('finally 2');
  end;
  Memo1.Lines.Add('-- end --');
end;

//----------------------------------------------------------------------------
// try - exit - except
procedure TForm1.Button5Click(Sender: TObject);
begin
  clear;
  pprint('  print("try 1")');
  pprint('  Exit');
  pprint('  print("try 2")',True);
  pprint('except');
  pprint('  print("except 1")', True);
  pprint('  print("except 2")', True);
  pprint('end');
  pprint('print("-- end --")', True);

  memo1.Lines.Clear;
  memo1.Lines.Add('-- start --');
  try
    memo1.Lines.Add('try 1');
    Exit;
    memo1.Lines.Add('try 2');
  except
    memo1.Lines.Add('except 1');
    memo1.Lines.Add('except 2');
  end;
  Memo1.Lines.Add('-- end --');
end;

//----------------------------------------------------------------------------
// try - exit - finally
procedure TForm1.Button6Click(Sender: TObject);
begin
  clear;
  pprint('  print("try 1")');
  pprint('  Exit');
  pprint('  print("try 2")',True);
  pprint('finally');
  pprint('  print("finally 1")');
  pprint('  print("finally 2")');
  pprint('end');
  pprint('print("-- end --")', True);

  memo1.Lines.Clear;
  memo1.Lines.Add('-- start --');
  try
    memo1.Lines.Add('try 1');
    Exit;
    memo1.Lines.Add('try 2');
  finally
    memo1.Lines.Add('finally 1');
    memo1.Lines.Add('finally 2');
  end;
  Memo1.Lines.Add('-- end --');
end;

//----------------------------------------------------------------------------
// try - ( try - finally) - finally
procedure TForm1.Button7Click(Sender: TObject);
begin
  clear;
  pprint('  print("try A-1")');
  pprint('  try');
  pprint('    print("try B-1")');
  pprint('    print("try B-2")');
  pprint('  finally');
  pprint('    print("finally B-1")');
  pprint('    print("finally B-2")');
  pprint('  end');
  pprint('  print("try A-2")');
  pprint('finally');
  pprint('  print("finally A-1")');
  pprint('  print("finally A-2")');
  pprint('end');
  pprint('print("-- end --")');

  memo1.Lines.Clear;
  memo1.Lines.Add('-- start --');
  try
    memo1.Lines.Add('try A-1');
    try
      memo1.Lines.Add('  try B-1');
      memo1.Lines.Add('  try B-2');
    finally
      memo1.Lines.Add('  finally B-1');
      memo1.Lines.Add('  finally B-2');
    end;
    memo1.Lines.Add('try A-2');
  finally
    memo1.Lines.Add('finally A-1');
    memo1.Lines.Add('finally A-2');
  end;
  Memo1.Lines.Add('-- end --');
end;

//----------------------------------------------------------------------------
// try - ( try - except) - except
procedure TForm1.Button8Click(Sender: TObject);
begin
  clear;
  pprint('  print("try A-1")');
  pprint('  try');
  pprint('    print("try B-1")');
  pprint('    print("try B-2")');
  pprint('  except');
  pprint('    print("except B-1")',True);
  pprint('    print("except B-2")',True);
  pprint('  end');
  pprint('  print("try A-2")');
  pprint('except');
  pprint('  print("except A-1")',True);
  pprint('  print("except A-2")',True);
  pprint('end');
  pprint('print("-- end --")');

  memo1.Lines.Clear;
  memo1.Lines.Add('-- start --');
  try
    memo1.Lines.Add('try A-1');
    try
      memo1.Lines.Add('  try B-1');
      memo1.Lines.Add('  try B-2');
    except
      memo1.Lines.Add('  except B-1');
      memo1.Lines.Add('  except B-2');
    end;
    memo1.Lines.Add('try A-2');
  except
    memo1.Lines.Add('except A-1');
    memo1.Lines.Add('except A-2');
  end;
  Memo1.Lines.Add('-- end --');
end;

//----------------------------------------------------------------------------
// try - ( try - raise - except) - except
procedure TForm1.Button9Click(Sender: TObject);
begin
  clear;
  pprint('  print("try A-1")');
  pprint('  try');
  pprint('    print("try B-1")');
  pprint('    raise Exception.Create("Problems ..")');
  pprint('    print("try B-2")',True);
  pprint('  except');
  pprint('    print("except B-1")');
  pprint('    print("except B-2")');
  pprint('  end');
  pprint('  print("try A-2")');
  pprint('except');
  pprint('  print("except A-1")',True);
  pprint('  print("except A-2")',True);
  pprint('end');
  pprint('print("-- end --")');

  memo1.Lines.Clear;
  memo1.Lines.Add('-- start --');
  try
    memo1.Lines.Add('try A-1');
    try
      memo1.Lines.Add('  try B-1');
      raise Exception.Create('Problems ..');
      memo1.Lines.Add('  try B-2');
    except
      memo1.Lines.Add('  except B-1');
      memo1.Lines.Add('  except B-2');
    end;
    memo1.Lines.Add('try A-2');
  except
    memo1.Lines.Add('except A-1');
    memo1.Lines.Add('except A-2');
  end;
  Memo1.Lines.Add('-- end --');
end;

//----------------------------------------------------------------------------
// try - ( try - raise - finally) - except
procedure TForm1.Button10Click(Sender: TObject);
begin
  clear;
  pprint('  print("try A-1")');
  pprint('  try');
  pprint('    print("try B-1")');
  pprint('    raise Exception.Create("Problems ..")');
  pprint('    print("try B-2")',True);
  pprint('  finally');
  pprint('    print("finally B-1")');
  pprint('    print("finally B-2")');
  pprint('  end');
  pprint('  print("try A-2")',True);
  pprint('except');
  pprint('  print("except A-1")');
  pprint('  print("except A-2")');
  pprint('end');
  pprint('print("-- end --")');

  memo1.Lines.Clear;
  memo1.Lines.Add('-- start --');
  try
    memo1.Lines.Add('try A-1');
    try
      memo1.Lines.Add('  try B-1');
      raise Exception.Create('problems ..');
      memo1.Lines.Add('  try B-2');
    finally
      memo1.Lines.Add('  finally B-1');
      memo1.Lines.Add('  finally B-2');
    end;
    memo1.Lines.Add('try A-2');
  except
    memo1.Lines.Add('except A-1');
    memo1.Lines.Add('except A-2');
  end;
  Memo1.Lines.Add('-- end --');
end;

//----------------------------------------------------------------------------
// try - ( try - raise - finally) - finally
procedure TForm1.Button11Click(Sender: TObject);
begin
  clear;
  pprint('  print("try A-1")');
  pprint('  try');
  pprint('    print("try B-1")');
  pprint('    raise Exception.Create("Problems ..")');
  pprint('    print("try B-2")',True);
  pprint('  finally');
  pprint('    print("finally B-1")');
  pprint('    print("finally B-2")');
  pprint('  end');
  pprint('  print("try A-2")',True);
  pprint('finally');
  pprint('  print("finally A-1")');
  pprint('  print("finally A-2")');
  pprint('end');
  pprint('print("-- end --")',True);

  memo1.Lines.Clear;
  memo1.Lines.Add('-- start --');
  try
    memo1.Lines.Add('try A-1');
    try
      memo1.Lines.Add('  try B-1');
      raise Exception.Create('problems ..');
      memo1.Lines.Add('  try B-2');
    finally
      memo1.Lines.Add('  finally B-1');
      memo1.Lines.Add('  finally B-2');
    end;
    memo1.Lines.Add('try A-2');
  finally
    memo1.Lines.Add('finally A-1');
    memo1.Lines.Add('finally A-2');
  end;
  Memo1.Lines.Add('-- end --');
end;

//----------------------------------------------------------------------------
// try - ( try - raise - except) - finally
procedure TForm1.Button12Click(Sender: TObject);
begin
  clear;
  pprint('  print("try A-1")');
  pprint('  try');
  pprint('    print("try B-1")');
  pprint('    raise Exception.Create("Problems ..")');
  pprint('    print("try B-2")',True);
  pprint('  except');
  pprint('    print("except B-1")');
  pprint('    print("except B-2")');
  pprint('  end');
  pprint('  print("try A-2")');
  pprint('finally');
  pprint('  print("finally A-1")');
  pprint('  print("finally A-2")');
  pprint('end');
  pprint('print("-- end --")');

  memo1.Lines.Clear;
  memo1.Lines.Add('-- start --');
  try
    memo1.Lines.Add('try A-1');
    try
      memo1.Lines.Add('  try B-1');
      raise Exception.Create('problems ..');
      memo1.Lines.Add('  try B-2');
    except
      memo1.Lines.Add('  except B-1');
      memo1.Lines.Add('  except B-2');
    end;
    memo1.Lines.Add('try A-2');
  finally
    memo1.Lines.Add('finally A-1');
    memo1.Lines.Add('finally A-2');
  end;
  Memo1.Lines.Add('-- end --');
end;

//----------------------------------------------------------------------------
// try - ( try - Exit - except) - finally
procedure TForm1.Button13Click(Sender: TObject);
begin
  clear;
  pprint('  print("try A-1")');
  pprint('  try');
  pprint('    print("try B-1")');
  pprint('    Exit');
  pprint('    print("try B-2")',True);
  pprint('  except');
  pprint('    print("except B-1")',True);
  pprint('    print("except B-2")',True);
  pprint('  end');
  pprint('  print("try A-2")',True);
  pprint('finally');
  pprint('  print("finally A-1")');
  pprint('  print("finally A-2")');
  pprint('end');
  pprint('print("-- end --")',True);

  memo1.Lines.Clear;
  memo1.Lines.Add('-- start --');
  try
    memo1.Lines.Add('try A-1');
    try
      memo1.Lines.Add('  try B-1');
      Exit;
      memo1.Lines.Add('  try B-2');
    except
      memo1.Lines.Add('  except B-1');
      memo1.Lines.Add('  except B-2');
    end;
    memo1.Lines.Add('try A-2');
  finally
    memo1.Lines.Add('finally A-1');
    memo1.Lines.Add('finally A-2');
  end;
  Memo1.Lines.Add('-- end --');
end;

//----------------------------------------------------------------------------
// try - ( try - Exit - except) - except
procedure TForm1.Button14Click(Sender: TObject);
begin
  clear;
  pprint('  print("try A-1")');
  pprint('  try');
  pprint('    print("try B-1")');
  pprint('    Exit');
  pprint('    print("try B-2")',True);
  pprint('  except');
  pprint('    print("except B-1")',True);
  pprint('    print("except B-2")',True);
  pprint('  end');
  pprint('  print("try A-2")',True);
  pprint('except');
  pprint('  print("except A-1")',True);
  pprint('  print("except A-2")',True);
  pprint('end');
  pprint('print("-- end --")',True);

  memo1.Lines.Clear;
  memo1.Lines.Add('-- start --');
  try
    memo1.Lines.Add('try A-1');
    try
      memo1.Lines.Add('  try B-1');
      Exit;
      memo1.Lines.Add('  try B-2');
    except
      memo1.Lines.Add('  except B-1');
      memo1.Lines.Add('  except B-2');
    end;
    memo1.Lines.Add('try A-2');
  except
    memo1.Lines.Add('except A-1');
    memo1.Lines.Add('except A-2');
  end;
  Memo1.Lines.Add('-- end --');
end;

//----------------------------------------------------------------------------
// try - ( try - Exit - finally) - finally
procedure TForm1.Button15Click(Sender: TObject);
begin
  clear;
  pprint('  print("try A-1")');
  pprint('  try');
  pprint('    print("try B-1")');
  pprint('    Exit');
  pprint('    print("try B-2")',True);
  pprint('  finally');
  pprint('    print("finally B-1")');
  pprint('    print("finally B-2")');
  pprint('  end');
  pprint('  print("try A-2")',True);
  pprint('finally');
  pprint('  print("finally A-1")');
  pprint('  print("finally A-2")');
  pprint('end');
  pprint('print("-- end --")',True);

  memo1.Lines.Clear;
  memo1.Lines.Add('-- start --');
  try
    memo1.Lines.Add('try A-1');
    try
      memo1.Lines.Add('  try B-1');
      Exit;
      memo1.Lines.Add('  try B-2');
    finally
      memo1.Lines.Add('  finally B-1');
      memo1.Lines.Add('  finally B-2');
    end;
    memo1.Lines.Add('try A-2');
  finally
    memo1.Lines.Add('finally A-1');
    memo1.Lines.Add('finally A-2');
  end;
  Memo1.Lines.Add('-- end --');
end;

//----------------------------------------------------------------------------
// try - ( try - Exit - finally) - except
procedure TForm1.Button16Click(Sender: TObject);
begin
  clear;
  pprint('  print("try A-1")');
  pprint('  try');
  pprint('    print("try B-1")');
  pprint('    Exit');
  pprint('    print("try B-2")',True);
  pprint('  finally');
  pprint('    print("finally B-1")');
  pprint('    print("finally B-2")');
  pprint('  end');
  pprint('  print("try A-2")',True);
  pprint('except');
  pprint('  print("except A-1")',True);
  pprint('  print("except A-2")',True);
  pprint('end');
  pprint('print("-- end --")',True);

  memo1.Lines.Clear;
  memo1.Lines.Add('-- start --');
  try
    memo1.Lines.Add('try A-1');
    try
      memo1.Lines.Add('  try B-1');
      Exit;
      memo1.Lines.Add('  try B-2');
    finally
      memo1.Lines.Add('  finally B-1');
      memo1.Lines.Add('  finally B-2');
    end;
    memo1.Lines.Add('try A-2');
  except
    memo1.Lines.Add('except A-1');
    memo1.Lines.Add('except A-2');
  end;
  Memo1.Lines.Add('-- end --');
end;

end.
