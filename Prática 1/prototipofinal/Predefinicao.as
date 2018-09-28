package
{
	public class Predefinicao
	{
		public var _accao:String;
		public var _reaccoes:Array;
		
		public function Predefinicao()
		{
			_accao = new String();
			_reaccoes = new Array();
		}
		
		public function meteAccao(accao:String):void
		{
			_accao = accao;
		}
		
//Trancar Porta
//Fechar Janela
//Chamar Policia
//Alertar Utilizador
//Accionar Alarme
		public function meteReaccao(reaccao:String):void
		{
			_reaccoes.push(reaccao);
		}
		
		public function meteReaccoes(temp:Array):void
		{
			if(temp[0] == 1)
			{
				this.meteReaccao("Trancar Porta");
			}
			if(temp[1] == 1)
			{
				this.meteReaccao("Fechar Janela");
			}
			if(temp[2] == 1)
			{
				this.meteReaccao("Chamar Policia");
			}
			if(temp[3] == 1)
			{
				this.meteReaccao("Alertar Utilizador");
			}
			if(temp[4] == 1)
			{
				this.meteReaccao("Accionar Alarme");
			}
		}
				
		
		public function daAccao():String
		{
			return _accao;
		}
		
		public function daReaccao(indice:Number):String
		{
			var resReaccao:String;
			if(indice < _reaccoes.length)
			{
				resReaccao = _reaccoes[indice];
			}
			return resReaccao;
		}
		
		public function daReaccoes():Array
		{
			var temp:Array = [2, 2, 2, 2, 2];
			for(var i:Number = 0; i < this.numReaccoes(); i++)
			{
				if(_reaccoes[i] == "Trancar Porta")
				{
					temp[0] = 1;
				}
				if(_reaccoes[i] == "Fechar Janela")
				{
					temp[1] = 1;
				}
				if(_reaccoes[i] == "Chamar Policia")
				{
					temp[2] = 1;
				}
				if(_reaccoes[i] == "Alertar Utilizador")
				{
					temp[3] = 1;
				}
				if(_reaccoes[i] == "Accionar Alarme")
				{
					temp[4] = 1;
				}
			}
			return temp;
		}
		
		public function trocaReaccao(indice:Number):void
		{
			if(indice < _reaccoes.length)
			{
				if(_reaccoes[indice] == 1)
				{
					_reaccoes[indice] = 2;
				}
				else
				{
					_reaccoes[indice] = 1;
				}
			}
		}
		
		public function numReaccoes():Number
		{
			return _reaccoes.length;
		}
	}
}