<template>
    <v-card>
      <v-card-title primary-title>
        <div>
          <div class="headline">Blockchain - Was ist das?</div>
          <span class="grey--text">Stille Post als Analogie</span>
        </div>
      </v-card-title>
      <v-card-text>
        <p class="text-sm-left">
          Stille-Post ist meine Blockchain Analogie, nur langweiliger und ohne Überraschungen.
        </p>
        <!-- Hä? -->
        <h2 class="text-sm-left">Hä - Stille Post - Analogie?</h2>
        <p class="text-sm-left">Ja genau, Stille-Post das Spiel aus Kindertagen, wo eine Nachricht von Ohr
             zu Ohr geflüstert wird und am Ende ein überraschendes Ergebnis steht.
        </p>
        <img src="static/stillepost.png" height="150" width="300"/>
        <!-- Wie das? -->
        <h2 class="text-sm-left">Wie das?</h2>
        <p class="text-sm-left">
          Ersetze die geheime Nachricht durch einen 'Zettel'. Das Flüstern indem 'der Zettel auf dem Tisch' gelegt wird.
          Das von 'Ohr zu Ohr' durch eine gemeinsame Abstimmung, darüber ob die Nachricht korrekt ist.
        </p>
        <p class="text-sm-left">Das abgestimmte Ergebnis (ausschließlich das abgestimmte Ergebnis) reihen wir Zettel für Zettel auf,
            wie an einer Schnurr. Die entstehende Zettelschnur ist die Blocklchain. Ich verspreche - es wird am Ende keine Überraschung geben.
            Das ist zwar langweilig aber zu 100% transparent. Genau das was wir im Internet vermissen.
        </p>
        <blockquote>Hurra - Stille-Post ist eine Blockchain Analogie.</blockquote>
        <!-- Ein bisschen Konkreter? -->
        <h2 class="text-sm-left">Ein bisschen Konkreter?</h2>
        <p class="text-sm-left">Stelle dir folgendes vor:</p>
        <li class="text-sm-left">Die Kinder - die Stille-Post spielen - nennen wir Nodes bzw. Legers</li>
        <li class="text-sm-left">Die Zettel bezeichnen wir als Transaktionen</li>
        <p/>
        <p class="text-sm-left">Eine Transaktion wird von einer Sender-Node erstellt,
            um eine Nachricht an eine Empfänger-Node zu übermitteln. Die Übermittlung passiert,
            wenn die Transaktion in der Blockchain gespeichert wird. Bevor das passiert muss die
            Transaktion noch verifiziert werden. Das passiert indem die Transaktion öffentlich
            bekannt gemacht wird. Alle beteiligten Nodes können die Transaktion einsehen und
            validieren. Die Kriterien sind:
        </p>
        <li class="text-sm-left">Jeder prüft ob der Sender und Empfänger existiert.</li>
        <li class="text-sm-left">Jeder prüft ob der Inhalt der Nachricht korrekt ist.</li>
        <li class="text-sm-left">Jeder versucht eine 6 zu würfeln.</li>
        <p>
        <p class="text-sm-left">
            Die erste Node, die alle 3 Kriterien erfüllt hat, unterschreibt den Zettel und benachrichtigt
            alle anderen Nodes darüber, dass ein neuer Zettel auf die Schnur geschnürt wurde. Die
            Transaktion gilt als übermittelt und ist für immer Bestandteil der Blockchain.
        </p>
        <!-- Was ist jetzt so besonders?-->
        <h2 class="text-sm-left">Was ist jetzt so besonders?</h2>
        <p class="text-sm-left">Die übermittelte Nachricht, in der Blockchain, steht dort für immer.
            Wie der Zettel auf der Schnur. Er kann niemals aus der Schnur entfernt werden und was darauf
            steht, steht dort ebenfalls für immer.
        </p>
        <!-- Was hat das mit Geld zu tun?-->
        <h2 class="text-sm-left">Was hat das mit Geld zu tun?</h2>
        <p class="text-sm-left">
            Wenn auf dem Zettel nicht nur eine Nachricht steht, sondern auch noch ein Geldschein angeklebt ist,
            den der Sender an den Empfänger gibt, dann ist eine Blockchain als Bezahlsystem denkbar. Der angeklebte
            Geldschein ist nach der übermittlung im Besitz des Empfängers und kann durch diesen in Form einer neuen
            Transaktion weiter gegeben werden.
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
