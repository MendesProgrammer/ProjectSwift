//
//  ContentView.swift
//  Desafio09
//
//  Created by Turma01-8 on 13/02/25.
//

import SwiftUI
import MapKit
import Foundation

struct Location: Identifiable, Hashable {
    let id = UUID()
    let nome: String
    let foto: String
    let descricao: String
    let latitude: Double
    let longitude: Double
}

var lugares: [Location] = [
    Location(nome:"Petra", foto: "ima6", descricao:"Petra é uma antiga cidade arqueológica localizada no sul da Jordânia, famosa por sua arquitetura esculpida nas rochas e pelos avançados sistemas de engenharia hidráulica. Fundada por volta do século VI a.C., Petra foi a capital do reino dos Nabatêus, um povo árabe que se destacou pelo comércio e pela habilidade em criar cidades complexas em áreas áridas e montanhosas.O que torna Petra única é sua arquitetura esculpida diretamente nas rochas das montanhas de arenito vermelho, o que confere à cidade uma aparência impressionante, especialmente ao amanhecer e ao entardecer, quando as pedras ganham uma cor dourada e rosada. O principal monumento de Petra é o Al-Khazneh (ou Tesouro), uma imensa fachada esculpida na rocha que servia como túmulo real. Outros pontos notáveis incluem o Teatro de Petra, o Monastério (Ad Deir), e os túmulos reais, que ilustram a grandiosidade da cidade.Petra floresceu entre os séculos I a.C. e II d.C. devido ao seu papel estratégico como ponto de comércio entre o Oriente e o Ocidente. Os nabateus desenvolveram uma complexa rede de rotas comerciais, além de inovadoras técnicas de conservação de água, essenciais para a sobrevivência no ambiente árido.Após a conquista romana, a cidade entrou em declínio, principalmente com o desvio das rotas comerciais e um terremoto devastador no século VIII, o que levou Petra a ser abandonada. Durante séculos, a cidade foi esquecida pelo mundo ocidental até ser redescoberta em 1812 pelo explorador suíço Johann Ludwig Burckhardt.Hoje, Petra é um dos principais pontos turísticos da Jordânia e foi nomeada uma das Novas Sete Maravilhas do Mundo em 2007. Seu status de Patrimônio Mundial da Humanidade pela UNESCO destaca sua importância histórica, cultural e arquitetônica.", latitude: 30.325204, longitude: 35.462603),
    
    Location(nome:"Chichén-Itzá", foto:"ima3", descricao:"Chichén Itzá é uma das cidades mais icônicas e bem preservadas da civilização maia, localizada no Yucatán, México. Fundada por volta do século V d.C., Chichén Itzá tornou-se um importante centro urbano, político e religioso, atingindo seu auge entre os séculos X e XV. Durante este período, a cidade foi um ponto de encontro entre várias culturas mesoamericanas, o que refletiu na diversidade de influências arquitetônicas presentes no local.O principal monumento de Chichén Itzá é a Pirâmide de Kukulkán, também conhecida como El Castillo. Esta pirâmide, dedicada ao deus maia Kukulkán (ou Quetzalcoatl), é famosa por sua impressionante precisão astronômica. A pirâmide possui 365 degraus, um para cada dia do ano, e é projetada de forma que, durante os equinócios de primavera e outono, a sombra projetada pelas escadas cria a ilusão de uma serpente descendo pelo templo, simbolizando o deus Kukulkán.Além da pirâmide, Chichén Itzá possui outros importantes vestígios arqueológicos, como o Observatório de Caracol, que era utilizado pelos maias para estudar os astros, e o Campo de Jogo de Pelota, onde eram realizados rituais envolvendo o jogo de pelota mesoamericano, uma prática religiosa e esportiva muito importante para os maias. A cidade também abriga o Templo dos Guerreiros e o Cenote Sagrado, um poço natural onde, acredita-se, eram feitos sacrifícios para os deuses.Chichén Itzá foi abandonada pelos maias por volta do século XV, possivelmente devido a fatores como guerras, mudanças climáticas e escassez de recursos. A cidade foi redescoberta por exploradores no século XIX e, em 1988, foi declarada Patrimônio Mundial da Humanidade pela UNESCO. Em 2007, Chichén Itzá foi eleita uma das Sete Maravilhas do Mundo Moderno.Hoje, Chichén Itzá é um dos destinos turísticos mais visitados do México, atraindo milhões de visitantes interessados em explorar o legado cultural e histórico dos maias, bem como em admirar sua extraordinária arquitetura e conhecimentos astronômicos.", latitude: 20.679560,longitude: -88.569704),
    
    Location(nome: "Machu Picchu", foto: "ima4", descricao: "Machu Picchu é uma antiga cidade inca localizada nas montanhas do Peru, a noroeste da cidade de Cusco. Considerada uma das Sete Maravilhas do Mundo Moderno e patrimônio da humanidade, Machu Picchu preserva um importante capítulo da história da América pré-colombiana, representando um registro da arquitetura e das técnicas de engenharia do Império Inca que datam do século XV. O local é atualmente um dos principais destinos turísticos da América do Sul e se transformou em um símbolo do subcontinente.", latitude: -13.162776, longitude: -72.545497),
    
    Location(nome: "Coliseo", foto: "ima2", descricao: "O Coliseu, também conhecido como Anfiteatro Flaviano, é um dos monumentos mais famosos e imponentes da Roma Antiga e um dos maiores símbolos do Império Romano. Localizado no coração de Roma, o Coliseu foi inaugurado no ano 80 d.C., durante o reinado do imperador Tito, e foi projetado para sediar eventos públicos, como gladiadores, lutas de animais, encenações de batalhas navais e outras formas de entretenimento popular.Com uma capacidade para abrigar até 50.000 espectadores, o Coliseu tinha uma estrutura monumental, com múltiplos andares de arquibancadas e um sistema complexo de entradas e saídas para garantir a segurança e a fluidez do público. A construção foi realizada com pedra travertina, tijolos e concreto, o que conferiu ao anfiteatro sua robustez. Ao longo dos séculos, o monumento passou por diversos danos devido a terremotos, saques e negligência, mas grande parte de sua grandiosidade ainda permanece intacta.O Coliseu era o centro das grandes diversões públicas e exibia o poder e a grandeza do Império Romano, sendo um local de expressão da autoridade do imperador sobre a população. Hoje, o Coliseu é uma das principais atrações turísticas de Roma e do mundo, além de ser reconhecido como um Patrimônio da Humanidade pela UNESCO. Sua imagem, de arena grandiosa e cheia de história, representa não apenas o legado romano, mas também a transformação dos espaços de entretenimento ao longo da história da humanidade.", latitude: 41.890602, longitude: 12.491061),
    
    Location(nome: "Muralha da China", foto: "ima7", descricao: "A Grande Muralha da China é uma das mais impressionantes e emblemáticas construções do mundo, com uma história que remonta a mais de 2.000 anos. Sua construção começou no século VII a.C., durante o período dos Reinos Combatentes, mas a maior parte da estrutura que conhecemos hoje foi erguida sob o império Qin (221–206 a.C.) e expandida durante as dinastias Han e Ming (1368–1644).Com cerca de 21.000 quilômetros de extensão, a muralha foi construída para proteger os impérios chineses contra invasões de povos nômades do norte, como os mongóis e os xiongnu, que constantemente ameaçavam as fronteiras do império. Ela não é uma parede contínua, mas sim uma série de fortificações interligadas por torres de vigilância, muralhas, fossos e passagens estratégicas.A construção da muralha envolveu o trabalho de milhões de pessoas, incluindo soldados, prisioneiros e camponeses. Foi um grande esforço de engenharia, utilizando materiais variados, como madeira, terra compactada, pedra e tijolos, dependendo da região. Em algumas áreas, a muralha foi projetada de maneira a seguir a topografia do terreno, aproveitando montanhas e rios como parte de sua defesa.Além de sua função militar, a muralha também servia para comunicação e controle de comércio, especialmente ao longo da Rota da Seda, que facilitava o intercâmbio de bens e culturas entre o Oriente e o Ocidente.Ao longo dos séculos, a muralha sofreu vários danos devido a guerras, abandono e deterioração natural. No entanto, muitas partes foram restauradas, principalmente durante a dinastia Ming, e hoje é uma das maiores atrações turísticas da China e um símbolo da força e perseverança do povo chinês.Em 1987, a Grande Muralha da China foi inscrita como Patrimônio Mundial da Humanidade pela UNESCO. Ela continua a ser um ícone de resiliência, história e uma das Sete Maravilhas do Mundo Moderno.", latitude: 40.432035, longitude: 116.570354),
    
    Location(nome: "Cristo Redentor", foto: "ima1", descricao: "O Cristo Redentor é um dos monumentos mais emblemáticos do Brasil e um dos maiores símbolos do Rio de Janeiro. Localizado no topo do Morro do Corcovado, o Cristo Redentor foi inaugurado em 12 de outubro de 1931 e é uma estátua de Jesus Cristo com os braços abertos, medindo 30 metros de altura, sem contar a base. Sua imagem, com os braços estendidos, é vista como um gesto de acolhimento e proteção à cidade e seus habitantes.O monumento foi idealizado pelo engenheiro Heitor da Silva Costa e pelo escultor Carlos Oswald, com projeto do artista francês Paul Landowski. A construção da estátua, que durou aproximadamente cinco anos, foi um marco na história do Brasil, representando a religiosidade e o patriotismo brasileiro.A estátua é feita de concreto e possui uma camada de pedras-sabão, que lhe confere uma aparência branca e imponente, visível de várias partes da cidade. O Cristo Redentor foi eleito uma das Sete Maravilhas do Mundo Moderno em 2007, em uma votação global organizada pela empresa New7Wonders.O monumento não apenas é um ponto turístico fundamental do Rio de Janeiro, mas também representa a fé cristã e o acolhimento ao povo. Sua localização no Corcovado proporciona uma vista panorâmica deslumbrante da cidade, tornando-se um dos destinos turísticos mais visitados do Brasil e do mundo.", latitude: -22.952054, longitude: -43.210713),
    
    Location(nome: "Taj Mahal", foto: "ima5", descricao: "O Taj Mahal é um dos monumentos mais reconhecidos do mundo e um símbolo da Arquitetura Mughal, localizado em Agra, na Índia. Construído entre 1632 e 1653, o Taj Mahal é um mausoléu em homenagem à Mumtaz Mahal, esposa do imperador Shah Jahan, que faleceu durante o parto de seu 14º filho. Este monumento representa um gesto de amor eterno do imperador pela esposa, sendo considerado uma das mais grandiosas expressões de arquitetura do mundo.O Taj Mahal é famoso por sua imensa cúpula de mármore branco, que se eleva majestosa sobre uma grande plataforma, cercada por um vasto jardim simétrico e espelhos d'água. A construção é uma fusão de estilos arquitetônicos persas, otomanos, indianos e islâmicos, o que a torna um exemplo único e refinado de design. A cúpula principal é cercada por minaretes e cercada por estruturas complementares, como mesquitas e portões decorados com intrincados detalhes.A construção do Taj Mahal envolveu o trabalho de milhares de artesãos e trabalhadores e utilizou materiais preciosos, como mármore branco de Makrana e pedras semipreciosas. A complexidade e beleza dos detalhes artísticos, incluindo incrustações de pedras preciosas em formas florais e geométricas, destacam a habilidade dos mestres da época.Além de ser um mausoléu, o Taj Mahal se tornou um símbolo de amor, beleza e luto, e é considerado um dos maiores exemplos de romantismo na arquitetura. Em 1983, o Taj Mahal foi listado como Patrimônio Mundial da Humanidade pela UNESCO e é uma das Sete Maravilhas do Mundo Moderno, atraindo milhões de turistas a cada ano.Sua beleza atemporal e a história por trás de sua construção continuam a encantar pessoas ao redor do mundo, consolidando o Taj Mahal como um dos maiores tesouros da Índia e da humanidade.", latitude: 27.174563, longitude: 78.042121)
]



struct ContentView: View {
    @State private var lugar1 = MapCameraPosition.region(MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: -22.952054, longitude: -43.210713), span: MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: 1)))
    
    @State private var selectedCity : Location = Location(nome: "Digite um valor", foto:"", descricao: "", latitude:10, longitude:10)
    
    @State  var aux : Location = Location(nome: "Digite um valor", foto:"", descricao: "", latitude:10, longitude:10)
    
    @State private var show = false
    
    var body: some View {
        ZStack {
            Map(position: $lugar1) {
                
                ForEach (lugares, id: \.self) {ln in
                    Annotation("\(ln.nome)", coordinate: CLLocationCoordinate2D(latitude: ln.latitude, longitude: ln.longitude)){
                      
                        Image(systemName: "mappin.circle.fill")
                            .onTapGesture {
                                show.toggle()
                                aux = ln
                            }
          
                    } // Fechamento do Annotation
                } // Fechamento do ForEach
            } // Fechamento do Map
            .sheet(isPresented: $show) {
                SheetView(recebe: $aux)
            }// Fechamento do Sheet
            
            .ignoresSafeArea()
            
            Picker("Teste", selection: $selectedCity, content: {
                ForEach(lugares, id: \.self){ f in
                    Text(f.nome)
                }
            })
            .background(RoundedRectangle(cornerRadius: 10)
                .fill(.yellow))
            .offset(x: 10, y:-350)
            .onChange(of: selectedCity){
                lugar1 = MapCameraPosition.region(MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: selectedCity.latitude, longitude: selectedCity.longitude), span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)))
            }
        } // Fechamento do ZStack
    }
}

#Preview {
    ContentView()
}
