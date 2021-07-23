def encrypt(text)
  # Definir um alfabeto de A a Z
  alphabet = ("A".."Z").to_a
  # Transformar o text em elementos de um array
  splitted_text = text.chars
  index = 0
  # Pegar o indice de cada letra
  encrypted = []
  #-> Transformar em map ao invés de each
  splitted_text.each do |char|
    index = alphabet.index(char)
    ## Ignorar o espaco em branco
    if index.nil?
      encrypted << char
    else
      # Retornar 3 indices a menos para cada letra do text
      encrypted << alphabet[index - 3]
    end
  end

  # retorno Juntar as letras para o retorno
  return encrypted.join
end

#-> Fazer o Decrypt
