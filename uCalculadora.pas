unit uCalculadora;

interface

uses uPessoa, uResultado, system.SysUtils;

type
  TCalculadora = class
  public
    function Calcular(pessoa: TPessoa): RResultado;
  end;

implementation

{ Calculadora }

function TCalculadora.Calcular(pessoa: TPessoa): RResultado;
var
  ResIMC: string;
  total: real;
begin

  try
    total := pessoa.peso / (pessoa.altura * pessoa.altura);

    if pessoa.sexo = 'F' then
    begin
      if total < 19.1 then
        ResIMC := 'Abaixo do peso!'
      else if (total > 19.1) and (total <= 25.8) then
        ResIMC := 'Peso normal!'
      else if (total > 25.8) and (total <= 27.3) then
        ResIMC := 'Marginalmente acima do peso!'
      else if (total > 27.3) and (total <= 32.3) then
        ResIMC := 'Acima do peso!'
      else
        ResIMC := 'Obeso!';
    end;

    if pessoa.sexo = 'M' then
    begin
      if total < 20.7 then
        ResIMC := 'Abaixo do peso!'
      else if (total > 20.7) and (total <= 26.4) then
        ResIMC := 'Peso normal!'
      else if (total > 26.4) and (total <= 27.8) then
        ResIMC := 'Marginalmente acima do peso!'
      else if (total > 27.8) and (total <= 31.1) then
        ResIMC := 'Acima do peso!'
      else
        ResIMC := 'Obeso!';
    end;

    Result.Valor := total;
    Result.Descricao := ResIMC;

  except
    raise Exception.Create('Erro ao efetuar o C�lculo de IMC');

  end;

end;

end.
