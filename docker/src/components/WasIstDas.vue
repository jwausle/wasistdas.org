<template>
    <v-card>
      <v-card-title primary-title>
        <div>
          <div class="headline text-sm-left">Docker - Was ist das?</div>
          <span class="grey--text">Netzwerkvirtualisierung genial einfach - einfach genial</span>
        </div>
      </v-card-title>
      <v-card-text>
        <p class="text-sm-left">
          Docker virtualisiert Netzwerke so einfach, ohne Router und Routen konfiguration beherrschen zu müssen
          - Sowohl das Erstellen (Build), das Betreiben (Run) und das Verteilen (Ship) ist einfach und
          platzsparend im Gegensatz zu herkömmlichen Virtualisierungstechnologien (<a href="https://www.vmware.com/">Vmware</a>, <a href="https://www.virtualbox.org/">VirtualBox</a>).
          Somit wird Jeder zum Netzwerkadministrator ohne es zu merken.
        </p>
        <img src="static/docker-architectur2.png" height="190" width="300"/>
        <h2 class="text-sm-left">Docker Idee - Schichten anstatt Monoliten</h2>
        <p class="text-sm-left">
          Die Docker Idee - genial einfach, schnelle und platzsparende Netwerkvirtualisierung durch aufeinanderschichten von Images. 
        </p>
        <ol class="text-sm-left">
          <li>Docker build - ist wie den Rechner zusammen bauen</li>
          <li>Docker ship - ist wie den Rechner kaufen und liefern</li>
          <li>Docker run - ist wie den Rechner einschalten</li>
        </ol>
        <br>        
        <p class="text-sm-left">
          Das Neue gegenüber existierenden Virtualisierungstechnologien (<a href="https://www.vmware.com/">Vmware</a>, <a href="https://www.virtualbox.org/">VirtualBox</a>) ist die
           Schichtenarchitektur. Ein virtueller Rechner wird nicht länger als eine große Einheit (Image)
           behandelt, sondern jede Schicht einzeln (z.B. Betriebssystemschicht, Netzwerkschicht, Anwendungsschicht).
           D.h. jede Schicht stellt lediglich ihre Dateien als <a href="/#/docker-image">Docker-Image</a> zur Verfügung.
           Diese Images werden zur Laufzeit des virtuellen Rechners zu einem <a href="/#/docker-container">Docker-Container</a> übereinander geschichtet.
        </p>
        <img src="static/docker-idee.png" height="150" width="300"/>        
        <br><span class="grey--text">"Schichten statt Monoliten"</span>
        <p class="text-sm-left">
          Alle Schichten
           übereinander bilden dann den virtuellen Rechner. Das hat den Vorteil das einzelne Schichten
           (z.B. Betriebssystem) einfach in vielen virtuellen Rechnern wiederverwendet werden können, obwohl
           sie physisch nur einmal existieren.
        </p>
        <img src="static/docker-lego.jpeg" height="190" width="300"/>
        <br><span class="grey--text">"Ein bischen wie Lego"</span>
        <p class="text-sm-left">
          Das Neue in puncto Netzwerkvirtualsierung ist, dass jeder <a href="/#/docker-container">Docker-Container</a> konsequent in einem privaten
          Docker-Subnetz betrieben wird. Die Routingkonfiguraion übernimmt Docker. Das mimimiert die Konfigurationsfehler
          für den Anwender und schafft Sicherheit auf Netzwerkebene, da das Docker-Subnetz für die <a href="/#/docker-container">Docker-Container</a>
          als Firewall agiert.
        </p>
        <img src="static/docker-network.gif" height="190" width="300"/>
        <br><span class="grey--text">"Jeder ist Netzwerkadmin ohne es zu merken"</span>
        <h2 class="text-sm-left">1. Docker - Build</h2>
        <span class="grey--text">"Docker - Build ist wie einen neuen Rechner zusammen bauen"</span>
        <p class="text-sm-left">
          Docker build ist das Erstellen von virtuellen Rechnern. Die Basis ist das <a href="/#/docker-dockerfile">Dockerfile</a> - eine einfache Beschreibungssprache, um
          ein <a href="/#/docker-image">Docker-Image</a> zu bauen. Der <a href="/#/docker-daemon">Docker-Daemon</a> erstellt automatisiert ein neues Image, das immer auf
          einem bestehenden <a href="/#/docker-image">Docker-Image</a> aufbaut. Meist ist das ein Betriebssystem. Das neu erstellte Image besteht dann mindestens aus zwei Schichten
          (z.B. der Betriebssystem-Schicht und der eigenen Anwendungsschicht). Beide Image Schichten werden einzeln in der Docker Registry gespeichert, verwalltet und
          verteilt (Docker - Ship).
        </p>
        <h2 class="text-sm-left">2. Docker - Ship</h2>
        <span class="grey--text">"Docker - Ship ist wie den neuen Rechner ins Ladenregal stellen, kaufen und liefern"</span>
        <p class="text-sm-left">
          Docker ship ist das Verteilen der Images an Dritte. Die Basis ist die Docker Registry - ein Webservice, um ein <a href="/#/docker-image">Docker-Image</a> unter einem
          bestimmten Namen+Tag zum Download bereitzustellen, so das Dritte das Image nutzen können (Docker - Run) oder weitere Images darauf aufbauen
          können (Docker - Build). <br>
          <a href="https://hub.docker.com/">Docker Hub</a> ist die bekannteste öffentliche, kostenfrei nutzbare Docker Registry. Jeder der Docker nutzen möchte, sollte sich
          dort einen Profil erstellen. Das erleichtert die ersten Schritte.
        </p>
        <h2 class="text-sm-left">3. Docker - Run</h2>
        <span class="grey--text">"Docker - Run ist wie den neuen Rechner das erste mal einschalten"</span>
        <p class="text-sm-left">
          Docker run startet einen virtuellen Rechner als <a href="/#/docker-container">Docker-Container</a>. Dazu läd der <a href="/#/docker-daemon">Docker-Daemon</a> alle
          erfoderlichen <a href="/#/docker-image">Docker-Images</a> von einer Docker-Registry herunter, schichtet diese zu einem virtuellen Rechner übereinander und startet
          anschliessend den Rechner.<br>
          Der virtuellen Rechner (<a href="/#/docker-container">Docker-Container</a>) bekommt eine IP Addresse im Docker-Netzwerk zu gewiesen und stellt in der Regel eine
          Netzwerkservice an einem bestimmten Port zur Verfügung (z.b. Port=80 Webserver, Port=3306 MySQL DB). Die Services können auf unterschiedliche Weise genutzt, geroutet
          und kombiniert werden, um komplexere Netzwerkanwedungen zu hosten.
        </p>
      </v-card-text>
    </v-card>
</template>
<script>
export default {
  name: 'WasIstDas',
  data () {
    return {
      show: false
    }
  }
}
</script>
