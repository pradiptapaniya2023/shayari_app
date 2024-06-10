//Complete

import 'package:flutter/material.dart';
import 'package:myui_shayriapp/thirdpage.dart';

class Second_Page extends StatefulWidget {
  String ShyariName;
  String ShyariImg;

  Second_Page(this.ShyariName, this.ShyariImg);

  @override
  State<StatefulWidget> createState() {
    return State_Second_Page();
  }
}

class State_Second_Page extends State<Second_Page> {
  List blankShyari = [];
  List dostiShyari = [
    """In friendship's embrace, we find endless grace.""",
    """With you by my side, every storm we'll ride.""",
    """Through laughter and cheer, our bond grows near.""",
    """Hand in hand, we conquer life's shifting sand.""",
    """Like stars in the night, friends shine forever bright.""",
    """In your laughter, I find my heart's raft.""",
    """With you, my friend, every moment's a draft.""",
    """Through thick and thin, our souls entwine within.""",
    """With you, every trial turns into a smile.""",
    """Like petals in bloom, our friendship consumes.""",
    """In your company, life feels like a symphony.""",
    """With you, every hurdle becomes fertile.""",
    """Through highs and lows, our friendship only glows.""",
    """Like roots in the soil, our bond never spoils.""",
    """In your friendship, I find my anchor ship.""",
    """With you, every silence sings of alliance.""",
    """Through days serene and rough, your friendship is enough.""",
    """Like rivers that flow, our friendship continues to grow.""",
    """In your presence, I find my essence.""",
    """With you, my friend, life's journey finds no end."""
  ];
  List lifeShyari = [
    """ Life's a journey, each step a story untold. """,
    """ In life's symphony, we play our part with glee. """,
    """ Life's canvas awaits, paint it with dreams ornate. """,
    """ In life's garden, bloom where you're planted. """,
    """ Life's puzzle unfolds, piece by precious piece. """,
    """ In life's melody, find your rhythm, dance free. """,
    """ Life's tapestry weaves moments of joy and sorrow. """,
    """ In life's theater, be the star of your own show. """,
    """ Life's river flows, carry dreams wherever it goes. """,
    """ Life's whispers guide, listen to the soul's tide. """,
    """ In life's embrace, find solace, find grace. """,
    """ Life's journey winds, embrace the twists and bends. """,
    """ Life's sky holds stars of hope in darkest nights. """,
    """ In life's silence, hear the whispers of resilience. """,
    """ Life's chapters turn, lessons learned, hearts yearn. """,
    """ Life's echoes reverberate with dreams to create. """,
    """ In life's storm, find strength to transform. """,
    """ Life's mirror reflects the truth within, begin. """,
    """ Life's echoes linger, in memories, fingers. """,
    """ In life's embrace, find love, find space. """,
  ];
  List memerioesShyari = [
    """ Memories like whispers, linger in the heart's chamber. """,
    """ In the album of time, memories etch their rhyme. """,
    """ Like petals of a rose, memories unfold in repose. """,
    """ Memories twinkle, like stars in the night's sprinkle. """,
    """ In the tapestry of time, memories weave their rhyme. """,
    """ Memories, silent storytellers of days gone by. """,
    """ In the symphony of life, memories compose their strife. """,
    """ Memories, the silent echo of moments cherished. """,
    """ Like leaves in autumn, memories swirl with emotion. """,
    """ In the quiet corners of the mind, memories unwind. """,
    """ Memories, the fragrance of life's fleeting dance. """,
    """ Like footprints in sand, memories mark where we've stand. """,
    """ In the whispers of nostalgia, memories find their aria. """,
    """ Memories, the tapestry woven with threads of emotion. """,
    """ Like jewels in the crown of time, memories shine sublime. """,
    """ In the treasure trove of the heart, memories play their part. """,
    """ Memories, the silent melody of time's serenade. """,
    """ Like ripples on a pond, memories echo and respond. """,
    """ In the echo of laughter, memories linger ever after. """,
    """ Memories, the silent companion in life's grand procession. """,
  ];
  List funnyShyari = [
    """ Life is like a doughnut, sometimes full of holes, but still sweet to eat. """,
    """ Love is like WiFi, it's all around but the connection is not always stable. """,
    """ I asked my mirror, 'Who's the fairest of them all?' It replied, 'Certainly not you, pal!' """,
    """ My wallet is like an onion, whenever I open it, it makes me cry. """,
    """ Dieting is like trying to hold water in a sieve, impossible and messy. """,
    """ My bed is my best friend, it never judges me for sleeping too much. """,
    """ I tried to be a morning person, but my bed and blanket had a better argument. """,
    """ I’m not lazy, I’m just conserving energy for a future emergency. """,
    """ I don’t need a hairstylist, my pillow gives me a new hairstyle every morning. """,
    """ My cellphone battery lasts longer than some of my relationships. """,
    """ I thought I was indecisive, but now I'm not quite sure. """,
    """ I always arrive late at the office, but I make up for it by leaving early. """,
    """ My house is clean enough to be healthy and dirty enough to be happy. """,
    """ I’m not clumsy, it's just the floor hates me, the tables and chairs are bullies, and the walls get in my way. """,
    """ I'm not short, I'm just concentrated awesome. """,
    """ My cooking is so bad, even the smoke alarm cheers when I'm done. """,
    """ I have a lot of jokes about unemployed people, but none of them work. """,
    """ My bank account is like a roller coaster, it keeps going down and makes me want to throw up. """,
    """ I'm not old, I'm just getting a little crispy around the edges. """,
    """ My love life is like a soap opera, full of drama and too many episodes. """,
  ];
  List politicalShyari = [
    """ In the game of politics, promises dance like shadows in the dark. """,
    """ Power, like a double-edged sword, cuts through the fabric of democracy. """,
    """ In the parliament of lies, truth struggles to find a seat. """,
    """ Politicians weave words like silk, but their actions are often coarse. """,
    """ Elections are like festivals, where promises are the fireworks that fizzle out. """,
    """ In the corridors of power, the echo of corruption reverberates. """,
    """ Politics is a stage, where actors perform their scripted roles with finesse. """,
    """ Democracy, a fragile flower, wilts in the shadow of tyranny. """,
    """ Leaders rise and fall like waves in the sea of public opinion. """,
    """ In the chessboard of politics, pawns are sacrificed for the king's gambit. """,
    """ Political speeches are like sugar-coated pills, bitter truths wrapped in sweet lies. """,
    """ Ideals are the currency of politics, but compromise is the price of power. """,
    """ The ballot box, a weapon wielded by the masses to shape their destiny. """,
    """ In the arena of politics, ideologies clash like titans in an epic battle. """,
    """ Politicians, the puppeteers pulling the strings of public opinion. """,
    """ Corruption, the cancer eating away at the roots of democracy. """,
    """ Politics is a puzzle, where the pieces never quite fit together. """,
    """ In the courtroom of justice, the scales are tipped by the hand of power. """,
    """ Democracy, a beacon of hope in a world shrouded in darkness. """,
    """ In the theater of politics, truth is often the casualty of war. """,
  ];
  List morningShyari = [
    """ As the sun rises, so does hope, painting the sky with dreams anew. """,
    """ In the morning's embrace, find the warmth of a brand new day. """,
    """ Like the dew on the petals, may your morning be fresh and sweet. """,
    """ Wake up with the sun, for every dawn brings a chance to begin again. """,
    """ As morning breaks, let your heart awaken to the symphony of possibilities. """,
    """ In the morning's glow, may you find the strength to let your light show. """,
    """ Rise and shine, for the world awaits the magic only you can bring. """,
    """ In the morning's silence, hear the whispers of your dreams calling. """,
    """ Let each morning be a reminder that you are blessed with another chance to thrive. """,
    """ With each sunrise, may your worries fade and your spirit soar. """,
    """ Embrace the morning breeze, for it carries the promise of a new adventure. """,
    """ In the morning's serenity, may you find peace amidst life's chaos. """,
    """ Wake up with gratitude, for every morning is a gift waiting to be unwrapped. """,
    """ Let the morning sun kiss your cheeks and fill your soul with warmth. """,
    """ Like a flower greeting the dawn, may your morning bloom with joy. """,
    """ With the first light, let optimism illuminate your path ahead. """,
    """ In the morning's stillness, may you find clarity and purpose. """,
    """ Rise with determination, for every morning brings opportunities for transformation. """,
    """ Let the morning sky inspire you to reach for the heights of your aspirations. """,
    """ As the world awakens, may you awaken to your own potential and possibilities. """,
  ];
  List birthdayShyari = [
    """ On your special day, may laughter fill the air, and joy overflow in every prayer. """,
    """ Another year has passed, another chapter unfolds, may your birthday be adorned with blessings untold. """,
    """ Like a candle glowing bright, may your birthday be a beacon of light, guiding you to dreams that take flight. """,
    """ Today is your day, a time to rejoice and play, may happiness pave your way, today and every day. """,
    """ With each passing year, may your heart grow lighter and your spirit shine brighter. Happy birthday to you, my dear! """,
    """ As you blow out the candles, may your wishes take flight, and may your dreams soar to infinite heights. """,
    """ On your special day, may the melody of laughter fill your heart, and may love surround you from the very start. """,
    """ Another year older, another reason to celebrate, may your birthday be as wonderful as you are great. """,
    """ Like a rare gem, you shine so bright, may your birthday sparkle with joy and delight. """,
    """ With each passing year, may your wisdom grow, and may your kindness continue to show. Happy birthday, dear friend! """,
    """ On your birthday, may the sun shine a little brighter, and may your smiles be even wider. """,
    """ Like a fine wine, you get better with age, may your birthday be a celebration on life's grand stage. """,
    """ Another year, another chance to make memories sweet, may your birthday be a joyful retreat. """,
    """ With each passing year, may your heart be filled with gratitude and cheer. Happy birthday, my dear! """,
    """ On your special day, may your dreams take flight, and may your journey be filled with delight. """,
    """ Like a butterfly emerging from its cocoon, may your birthday be a symbol of transformation and bloom. """,
    """ Today, as you blow out the candles, may your wishes come true, and may blessings rain down on you. """,
    """ Another year older, another reason to celebrate, may your birthday be as bright as the stars in the night. """,
    """ With each passing year, may your life be filled with love, laughter, and cheer. Happy birthday to you, my dear! """,
    """ On your special day, may the universe conspire to bring you all that your heart desires. Happy birthday! """,
  ];
  List natureShyari = [
    """ In the embrace of nature, find solace for the soul, and peace that makes you whole. """,
    """ Like a canvas painted by the divine hand, nature's beauty is beyond what we understand. """,
    """ In the whisper of the wind and the dance of the trees, hear nature's symphony, wild and free. """,
    """ As the sun kisses the earth with its golden light, nature awakens from its slumber, a breathtaking sight. """,
    """ In the silence of the forest, find the secrets of the universe, hidden in every leaf and every verse. """,
    """ Like a river flowing to the sea, let your worries drift away and be free. """,
    """ In the bloom of a flower and the song of a bird, find the magic of nature, beyond every word. """,
    """ As the moon rises in the velvet sky, let your spirit soar and your imagination fly. """,
    """ In the vastness of the ocean and the infinity of the sky, find the wonder of nature, where dreams never die. """,
    """ Like the mountains reaching for the heavens, let your aspirations soar to new dimensions. """,
    """ In the dance of the butterflies and the colors of the rainbow, find nature's art, a masterpiece on show. """,
    """ As the stars twinkle in the midnight sky, let your heart be filled with wonder and your spirit high. """,
    """ In the rustle of the leaves and the murmur of the streams, hear nature's lullaby, a melody of dreams. """,
    """ Like the petals of a flower opening to the sun, let your heart open to the beauty that's begun. """,
    """ In the stillness of the dawn and the serenity of the dusk, find the rhythm of nature, in every moment, in every husk. """,
    """ As the seasons change and the earth evolves, let your soul be nourished by nature's resolve. """,
    """ Like the dewdrop on a leaf and the butterfly in flight, find the simple joys of nature, pure and bright. """,
    """ In the majesty of the mountains and the serenity of the sea, find the peace that sets your spirit free. """,
    """ As the flowers bloom and the birds take flight, let your heart be filled with nature's delight. """,
    """ Like a leaf floating on a gentle breeze, let yourself be carried away by nature's ease. """,
  ];
  List hopeShyari = [
    """ In the darkest of nights, hope shines as the brightest star, guiding us through the shadows afar. """,
    """ Like a seed in the soil, hope grows from the depths of despair, blooming into dreams beyond compare. """,
    """ In the depths of despair, hope is the lifeline we cling to, leading us to shores anew. """,
    """ As the sun rises with each dawn, hope whispers in the gentle morn, promising a day reborn. """,
    """ Like a beacon in the storm, hope lights our way, guiding us to a brighter day. """,
    """ In the silence of the soul, hope is the melody that soothes, filling every heart with gentle hues. """,
    """ Like a phoenix rising from the ashes, hope emerges from the darkest night, igniting the flame of endless light. """,
    """ In the face of adversity, hope is the strength we hold dear, casting away every doubt and fear. """,
    """ As the river flows towards the sea, hope carries us through every adversity, setting our spirits free. """,
    """ Like a rainbow after rain, hope paints the sky with colors bright, promising a future ever so light. """,
    """ In the heart of despair, hope is the silver lining we seek, promising a brighter tomorrow in every streak. """,
    """ As the stars twinkle in the night, hope sparkles in the darkest plight, guiding us towards the light. """,
    """ Like a flower pushing through the snow, hope blooms in the coldest of blows, reminding us that life still flows. """,
    """ In the echoes of despair, hope is the melody we hear, filling every heart with cheer. """,
    """ As the moon wanes and waxes, hope remains steadfast through every axis, guiding us through every crisis. """,
    """ Like a sail in the storm, hope steers us through the roughest sea, promising a safe journey to be. """,
    """ In the labyrinth of life, hope is the thread we hold, guiding us towards dreams untold. """,
    """ As the seasons change and the winds blow, hope remains constant, in every ebb and flow. """,
    """ Like a bird in flight, hope soars high above, filling every heart with boundless love. """,
    """ In the silence of the night, hope whispers in the starry light, reminding us that everything will be alright. """,
  ];
  List dreamsShyari = [
    """ In the canvas of dreams, paint your desires bold, let them unfold, and watch your story be told. """,
    """ Like stars in the night sky, dreams sparkle in the depths of your eye, guiding you to realms far and high. """,
    """ In the tapestry of life, dreams are the threads we weave, shaping the patterns of what we believe. """,
    """ Like a bird in flight, let your dreams take wing, soaring to heights where only angels sing. """,
    """ In the silence of the night, dreams whisper in hues so bright, filling every heart with delight. """,
    """ Like seeds in the soil, dreams grow with tender care, blossoming into realities rare. """,
    """ In the dance of imagination, dreams pirouette with jubilation, painting visions of liberation. """,
    """ Like waves upon the shore, dreams crash with a mighty roar, carving pathways to forevermore. """,
    """ In the depths of your soul, let your dreams take hold, guiding you towards destinies untold. """,
    """ Like a melody in the wind, let your dreams sing, filling every moment with magic and zing. """,
    """ In the stillness of the night, dreams take flight, reaching for stars shining bright. """,
    """ Like the moon in the sky, dreams wax and wane, but their light never dies, guiding us through every terrain. """,
    """ In the whispers of your heart, dreams find their start, igniting passions that never depart. """,
    """ Like clouds in the sky, dreams drift and sway, painting pictures of a brighter day. """,
    """ In the echoes of your mind, dreams unwind, revealing treasures one of a kind. """,
    """ Like a phoenix rising from the ashes, dreams emerge from the deepest crashes, birthing hope in their flashes. """,
    """ In the garden of your soul, dreams bloom and grow, filling every corner with a radiant glow. """,
    """ Like a compass in the storm, let your dreams guide, leading you to shores far and wide. """,
    """ In the silence of the dawn, dreams linger on, whispering secrets of journeys yet to be drawn. """,
    """ Like a tapestry of stars, dreams light up the night, weaving tales of infinite delight. """,
  ];
  List successShyari = [
    """ Success is not just a destination, but a journey of dedication, where every step is a manifestation of determination. """,
    """ Like a mountain peak, success stands tall, conquered by those who dare to give their all. """,
    """ In the pursuit of dreams, success is the gleam, shining bright like a radiant beam. """,
    """ Success is not measured by the heights we reach, but by the obstacles we breach, and the lessons we teach. """,
    """ Like a river flowing to the sea, success is a journey, wild and free, carving its path with relentless glee. """,
    """ In the symphony of life, success is the melody, played with passion and harmony, resonating through eternity. """,
    """ Like a phoenix rising from the ashes, success emerges from the deepest crashes, fueled by determination that never clashes. """,
    """ Success is not defined by the trophies we display, but by the challenges we slay, along the way. """,
    """ In the garden of ambition, success is the flower in bloom, casting its fragrance in every room. """,
    """ Like a star in the night sky, success shines bright, illuminating the path to every height. """,
    """ Success is not a destination to be reached, but a journey to be preached, where effort and persistence are the keys to each. """,
    """ In the tapestry of dreams, success is the thread that gleams, weaving tales of triumph and esteem. """,
    """ Like a symphony in motion, success orchestrates its potion, blending passion and devotion in every notion. """,
    """ Success is not confined to the pages of a book, but etched in the hearts of those who look, beyond every nook. """,
    """ In the pursuit of greatness, success is the compass that guides, through every storm that derides. """,
    """ Like a flame in the dark, success ignites the spark, lighting the way to dreams that embark. """,
    """ Success is not a race to be won, but a journey begun, where perseverance is the only one. """,
    """ In the canvas of life, success is the stroke of color, painting dreams with fervor, and aspirations to savor. """,
    """ Like a symphony in crescendo, success builds its tempo, reaching heights that crescendo. """,
    """ Success is not just a triumph of might, but a testament to the fight, against every plight, in the pursuit of light. """,
  ];
  List positivityShyari = [
    """ In the garden of life, positivity blooms like a flower, spreading fragrance even in the darkest hour. """,
    """ Like a ray of sunshine, positivity brightens every corner, chasing away shadows with its gentle demeanor. """,
    """ In the symphony of existence, positivity is the melody that uplifts, filling every heart with joy and shifts. """,
    """ Like a gentle breeze on a summer's day, positivity whispers hope in every way, guiding us through the fray. """,
    """ In the tapestry of thoughts, positivity is the thread that weaves, crafting dreams that every heart believes. """,
    """ Like a beacon in the night, positivity shines bright, lighting the path to infinite delight. """,
    """ In the silence of the soul, positivity is the voice that consoles, turning wounds into precious goals. """,
    """ Like a river flowing to the sea, positivity flows freely, nourishing every dream to be. """,
    """ In the dance of destiny, positivity is the partner that leads, showing us the way to fulfill our needs. """,
    """ Like a phoenix rising from the ashes, positivity emerges from the deepest crashes, turning setbacks into triumphs and flashes. """,
    """ In the canvas of life, positivity paints with colors bold, turning every story into legends untold. """,
    """ Like stars in the night sky, positivity twinkles high, reminding us to reach for the sky. """,
    """ In the symphony of dreams, positivity is the melody that gleams, inspiring us to pursue our dreams. """,
    """ Like a gentle rain on parched land, positivity nurtures every strand, bringing life to dreams planned. """,
    """ In the garden of hope, positivity is the seed that we sow, blossoming into dreams that grow. """,
    """ Like a lighthouse on the shore, positivity guides evermore, leading us to distant shores. """,
    """ In the whispers of the heart, positivity is the song that starts, filling every moment with joyous hearts. """,
    """ Like a flame in the dark, positivity ignites the spark, lighting the way even in the deepest mark. """,
    """ In the echoes of despair, positivity is the prayer, filling every heart with love and care. """,
    """ Like a symphony in harmony, positivity orchestrates its melody, turning every challenge into victory. """,
  ];

  @override
  Widget build(BuildContext context) {
    if (widget.ShyariName == "Dosti") {
      blankShyari = dostiShyari;
    } else if (widget.ShyariName == "Life") {
      blankShyari = lifeShyari;
    } else if (widget.ShyariName == "Memerioes") {
      blankShyari = memerioesShyari;
    } else if (widget.ShyariName == "Funny") {
      blankShyari = funnyShyari;
    } else if (widget.ShyariName == "Political") {
      blankShyari = politicalShyari;
    } else if (widget.ShyariName == "Morning") {
      blankShyari = morningShyari;
    } else if (widget.ShyariName == "Birthday") {
      blankShyari = birthdayShyari;
    } else if (widget.ShyariName == "Nature") {
      blankShyari = natureShyari;
    } else if (widget.ShyariName == "Hope") {
      blankShyari = hopeShyari;
    } else if (widget.ShyariName == "Dreams") {
      blankShyari = dreamsShyari;
    } else if (widget.ShyariName == "Success") {
      blankShyari = successShyari;
    } else if (widget.ShyariName == "Positivity") {
      blankShyari = positivityShyari;
    }

    return Scaffold(
      backgroundColor: Colors.pink[300],
      appBar: AppBar(
        backgroundColor: Colors.green[900],
        title: Text(
          "${widget.ShyariName}",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return ListTile(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Third_Page(widget.ShyariName , blankShyari , index);
                },));
              },
              title: Text(
                maxLines: 1,
                "${blankShyari[index]}",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 20),
              ),
              leading: Container(
                  height: 50,
                  width: 50,
                  child: Image.asset("${widget.ShyariImg}")),
              trailing: Icon(Icons.navigate_next , color: Colors.white, size: 30,),
            );
          },
          separatorBuilder: (context, index) {
            return Divider(
              height: 20,
              thickness: 10.0,
              color: Colors.grey[400],
            );
          },
          itemCount: blankShyari.length),
    );
  }
}
