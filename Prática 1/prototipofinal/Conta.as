package
{
	public class Conta
	{
		private var _tipo:String;
		private var _nome:String;
		private var _permissoes:Array;
		private var _historico:Number;
		private var _admin:Boolean;
		
		public function Conta(tipo:String)
		{
			_tipo = tipo;
			_nome = "";
			_permissoes = new Array();
			_historico = 0;
			_admin = false;
		}
		
		public function setAdmin():void
		{
			if(_admin)
			{
				_admin = false;
			}
			else
			{
				_admin = true;
			}
		}
		
		public function adminQ():Boolean
		{
			return _admin;
		}
		
		public function meteHistorico(numero:Number):void
		{
			if(numero == 0 || numero == 1)
			{
				_historico = numero;
			}
		}
		
		public function daHistorico():Number
		{
			return _historico;
		}
		
		public function alteraHistorico():void
		{
			if(_historico == 1)
			{
				_historico = 0;
			}
			else
			{
				_historico = 1;
			}
		}
		
		public function meteNome(nome:String):void
		{
			_nome = nome;
		}
		
		
		public function daNome():String
		{
			return _nome;
		}
		
		public function daTipo():String
		{
			return _tipo;
		}
		
		public function metePermissoes(permissoes:Array):void
		{
			_permissoes = permissoes;
		}
		
		public function alteraPermissao(num:Number):void
		{
			if(_permissoes[num] == 1)
			{
				_permissoes[num] = 2;
			}
			else if(_permissoes[num] == 2)
			{
				_permissoes[num] = 1;
			}
		}
		
		public function daPermissao(indice:Number):Number
		{
			var permissao:Number = 0;
			if(indice < _permissoes.length)
			{
				permissao = _permissoes[indice];
			}
			return permissao;
		}
		
	}
}
		