#encoding: UTF-8
pushkin = User.create :nick => "Pushkin", :name => "Alexander Pushkin", :avatar => "http://cs11012.vk.me/g30230765/d_e060adf3.jpg"
lermontov = User.create :nick => "Lermontov", :name => "Mikhail Lermontov", :avatar => "http://cs11012.vk.me/g30231806/d_76564929.jpg"
yesenin = User.create :nick => "Yesenin", :name => "Sergey Yesenin", :avatar => "http://cs5326.vk.me/g24263942/d_e91d2798.jpg"

pushkin_post_0 = Post.create :title => "A wish",
                             :body => "My days still linger, slow and rough
                                       Each moment multiplies the sadness
                                       Within the heart of hapless love
                                       Disturbing all the hopes of madness
                                       I'm silent; not a word I breathe.
                                       I weep, my tears -- my consolation
                                       My soul, held captive by the grief
                                       Still finds delight in this sensation.
                                       No longer do I care if life goes by,
                                       O, hollow phantom into darkness flee;
                                       The sorrow of my love is dear to me--
                                       If I die loving, then I pray let die!",
                             :preview_image => "http://thumbs.dreamstime.com/thumbimg_402/12432758188IXZbQ.jpg",
                             :user_id => pushkin.id
pushkin_post_1 = Post.create :title => "To ***",
                             :body => "I still remember that amazing moment
                                      You have appeared before my sight
                                      As though a brief and fleeting omen,
                                      Pure phantom in enchanting light.

                                      Locked in depression's hopeless captive,
                                      In haste of clamorous processions,
                                      I heard your voice-- soft and attractive.
                                      And dreamt of your beloved expressions.

                                      Time passed. In gusts, rebellious and active,
                                      A tempest scattered my affections
                                      And I forgot your voice attractive,
                                      Your sacred and divine expressions.

                                      Detained in darkness, isolation,
                                      My days would slowly drag in strife.
                                      With lack of faith and inspiration,
                                      With lack of tears, and love and life.

                                      My soul attained its waking moment:
                                      You re-appeared before my sight,
                                      As though a brief and fleeting omen,
                                      Pure phantom in enchanting light.

                                      And now, my heart, in fascination
                                      Beats rapidly and finds revived:
                                      Devout faith and inspiration,
                                      And tender tears and love and life.",
                             :preview_image => "http://thumbs.dreamstime.com/thumbimg_555/1289349125WGtmdw.jpg",
                             :user_id => pushkin.id
pushkin_post_2 = Post.create :title => "I loved you...",
                             :body => "I loved you and this love by chance,
                                        Inside my soul has never fully vanished;
                                        No longer shall it ever make you tense;
                                        I wouldn't want to sadden you with anguish.
                                        I loved you speechlessly and wildly,
                                        By modesty and jealousy was stressed;
                                        I loved you so sincerely and so mildly,
                                        As, God permit, may love you someone else.",
                             :preview_image => "http://thumbs.dreamstime.com/thumbimg_655/13252228518VaQ2Q.jpg",
                             :user_id => pushkin.id
pushkin_post_3 = Post.create :title => "To ***",
                             :body => "Don't ask me why alone in dismal thought
                                      In times of mirth, I'm often filled with strife,
                                      And why my weary stare is so distraught,
                                      And why I don't enjoy the dream of life;

                                      Don't ask me why my soul has slowly perished
                                      And ceased to love the love that pleased me then
                                      No longer can I call someone \"my cherished\"--
                                      Who once has loved will never love again;

                                      Who once felt bliss will never feel its essence,
                                      A moment's happiness is all that we receive:
                                      From youth, prosperity and joyful pleasance
                                      All that is left is apathy and grief...",
                             :user_id => pushkin.id
pushkin_post_4 = Post.create :title => "***",
                             :body => "My friend, forgotten are the fleeting era's prints
                                      Forgotten is my youth's uprising flow
                                      Don't question me on what I'm lacking since,
                                      On what I felt in the times of joy and woe,
                                      On what I loved, on how I was forlorn
                                      I've yet to taste true joy, -- that is inborn;
                                      But you are innocent! conceived for only bliss
                                      Believe in it and seize each moment's portion
                                      Your soul was made for friendship and devotion,
                                      A passionate and loving kiss.
                                      Your soul is pure and unexposed to sadness
                                      Your conscience is as bright as any day
                                      Why then perceive the lunacy and madness
                                      Of the uninteresting hearsay?
                                      It will replace your peace with aggravation
                                      You'll tremble with your heart and cry in bed
                                      Your soul will lose its trust in agitation
                                      And you, perhaps... my love may grow to dread
                                      Who knows? perhaps forever... No, my dear
                                      I fear to cast the only joy away
                                      Don't ask for dangerous confessions here
                                      Today I love, I'm happy for today.",
                             :preview_image => "http://thumbs.dreamstime.com/thumbimg_490/1269734684o72ihn.jpg",
                             :user_id => pushkin.id
pushkin_post_5 = Post.create :title => "***",
                             :body => "I've lived to see desire vanish,
                                      With hope I've slowly grown to part,
                                      And I am left with only anguish,
                                      The fruit of emptiness at heart.

                                      Under the storms of merciless fate
                                      My thriving garland withered lies--
                                      In sadness, lonesome, I await:
                                      How far away is my demise?

                                      Thus, conquered by a tardy frost,
                                      Through gale's whistling and shimmer,
                                      Late, on a naked limb exposed
                                      A lonesome leaf is left to quiver...",
                             :user_id => pushkin.id
pushkin_post_6 = Post.create :title => "The Tenth Commandment",
                             :body => "Don't covet goods of other beings --
                                      My Goodness, You've commanded so;
                                      The limits of my will You know --
                                      Am I to manage tender feelings?!
                                      I wish not to offend my friend,
                                      His village I do not desire,
                                      And for his steer I don't aspire,
                                      I'm gazing at it with content:
                                      His men, his house and his cattle,
                                      I'm tempted not, though all is great.
                                      But let's imagine that his maid
                                      Is beautiful... I've lost the battle!
                                      And if by chance his lady's pretty
                                      And gifted with an angel's skin
                                      Then God forgive me for my sin
                                      Of being envious and greedy!
                                      Who can command a heart like this?
                                      Who is a slave to feeble effort?
                                      Not love a person who is revered?--
                                      Who can resist the heaven's bliss?
                                      I sigh from sadness and perceive,
                                      But I must honor my conviction,
                                      Afraid to flatter heart's ambition,
                                      I'm silent... and alone I grieve.",
                             :user_id => pushkin.id
pushkin_comment_0 = Comment.create :body => "Alas! How come she's glimmering
                                         With temporary, charming vibe?
                                         It's evident that she is withering
                                         While youth is blossoming with life...
                                         Soon she will fade! Life of delight
                                         Not very long she has to treasure;
                                         And not for long will she provide
                                         Her happy family with pleasure.
                                         Her mellow wit will not abide
                                         To energize our conversations
                                         And with her soul, she won't subside
                                         The sufferer's lamentations.
                                         I hurry, still distraught in thought,
                                         Concealing all of my dejection,
                                         To catch her every cheerful word
                                         And to delight in her perfection.
                                         I watch her move, with admiration,
                                         Perceive each sound from her soul
                                         From every moment's separation
                                         My tender heart becomes appalled.",
                             :user_id => pushkin.id,
                             :topmost_obj_id => pushkin_post_0.id,
                             :topmost_obj_type => 'p'
pushkin_comment_1 = Comment.create :body => "I can't sleep, the light is out;
                                         Chasing senseless dreams in gloom.
                                         Clocks at once, inside my room,
                                         Somewhere next to me, resound.
                                         Parcae's soft and mild chatter,
                                         Sleeping twilight's noisy flutter,
                                         Life's commotion -- so insane..
                                         Why am I to feel this pain?
                                         What's your meaning, boring mumble?
                                         Disapproving, do you grumble
                                         Of the day I spent in vain?
                                         What has made you so compelling?
                                         Are you calling or foretelling?
                                         I just want to understand,
                                         Thus I'm seeking your intent...",
                             :user_id => pushkin.id,
                             :topmost_obj_id => pushkin_post_1.id,
                             :topmost_obj_type => 'p'
pushkin_comment_2 = Comment.create :body => "If by life you were deceived,
                                         Don't be dismal, don't be wild!
                                         In the day of grief, be mild
                                         Merry days will come, believe.

                                         Heart is living in tomorrow;
                                         Present is dejected here;
                                         In a moment, passes sorrow;
                                         That which passes will be dear.",
                             :user_id => pushkin.id,
                             :topmost_obj_id => pushkin_post_2.id,
                             :topmost_obj_type => 'p'

lermontov_post_0 = Post.create :title => "Clouds",
                             :body => "Clouds of the air, ye perennial wanderers!
                                       High in the steppe of blue, stretched like a string of pearls,
                                       You scud away from the North over yonder, as
                                       Though you are exiles like me whom the grimness hurls.

                                       Who keeps you flitting: a verdict of destiny?
                                       Secretive envy? Or naked malignancy?
                                       Or you’re tormented so hard by a felony?
                                       Or by your friends’ poisoned slander and flippancy?

                                       Nay, barren fields are what made you undoting...
                                       Nothing to you ever passion or anguish meant;
                                       Frigid forever, for always free-floating,
                                       You have no motherland, you have no banishment.",
                             :user_id => lermontov.id
lermontov_post_1 = Post.create :title => "Testament",
                             :body => "I want to take you to one side,
                                       If you don’t mind, my friend;
                                       They say there’s not much time to bide
                                       Until I meet my end!
                                       You’re going home to see your wife,
                                       So, look... But why? about my life,
                                       To tell the truth, not many
                                       Would give a straw, if any.

                                       And if some have an interest...
                                       No matter who they are,
                                       Say I’d been shot right through my chest
                                       Defending here our tsar,
                                       And died for him the way one should,
                                       And that our leeches are no good,
                                       And that I bow in honour
                                       Before my native corner.

                                       It’s quite unlikely that you’ll find
                                       My folks alive up there...
                                       And frankly, it’d have been unkind
                                       To drive them to despair;
                                       But then if either’s still all right,
                                       Just say that I’m too lax to write,
                                       That the platoon keeps raiding;
                                       So let them stop awaiting.

                                       There used to live a girl next door...
                                       How far it was from now!..
                                       About me she won’t ask... it’s more
                                       Than certain, anyhow;
                                       So go and tell her all the truth;
                                       An empty heart deserves no ruth;
                                       Just let her weep a little...
                                       She doesn’t care a tittle!",
                             :user_id => lermontov.id
lermontov_post_2 = Post.create :title => "A Cossack Lullaby",
                             :body => "Sleep, my baby, sleep, my dear,
                                       Hush-a-hushaby.
                                       In your crib the full moon peers
                                       Softly from the sky.
                                       I will tell you some good stories,
                                       Sing a lullaby;
                                       Close your eyes, it’s time for snories,
                                       Hush-a-hushaby.

                                       In the rocks, there streams the Terek;
                                       Muddy billows bang;
                                       Chechen whets his knife Tartaric,
                                       Crawling up the bank;
                                       But your father is a warrior
                                       With an eagle eye —
                                       Sleep, my baby, do not worry,
                                       Hush-a-hushaby.

                                       Time will come; you’ll know the battle
                                       Life, my little one;
                                       I’ll embroider then your saddle;
                                       You will take your gun.
                                       Many enemies you’ll hit hard
                                       As the time goes by...
                                       Sleep, my darling, sleep, my sweetheart,
                                       Hush-a-hushaby.

                                       You will grow a stalwart cossack
                                       Looking brave and grand;
                                       When I see you off — from horseback
                                       You’ll just wave your hand...
                                       On that night, God knows, how many
                                       Bitter tears I’ll cry!..
                                       Sleep, my angel, sleep, my honey,
                                       Hush-a-hushaby.

                                       I’ll be waiting through despair’s
                                       Never-ending blight;
                                       I’ll repeat my heartfelt prayers
                                       Through the day and night;
                                       I will dread that you do languish
                                       Far from homeland, ay...
                                       Sleep before you are in anguish,
                                       Hush-a-hushaby.

                                       To remind you of the bygone
                                       Happy days at home,
                                       I will give the holy icon —
                                       Keep it when you roam;
                                       Think of me before severe
                                       Fighting flames up high...
                                       Sleep, my baby, sleep, my dear,
                                       Hush-a-hushaby.",
                             :user_id => lermontov.id
lermontov_post_3 = Post.create :title => "The Crag",
                             :body => "Once upon a night, a golden cloudlet
                                       Snuggled to the chest of crag the giant;
                                       In the morn, she left her rest behind
                                       Frolicking against the azure proudly;

                                       But a dew mark lingered in a weathered
                                       Furrow of the crag. In desolation,
                                       He is standing, deep in contemplation,
                                       And he’s softly weeping in the desert.",
                             :user_id => lermontov.id
lermontov_post_4 = Post.create :title => "Prayer",
                             :body => "Heavenly Mother, it’s me, and this time I pray
                                       Before thy icon, thy luminous radiance,
                                       Not for salvation, and not “fore a tighter fray,
                                       Not with thanksgiving, and not out of penitence;

                                       Not for my ravaged soul prayers to thee I send,
                                       That of a wanderer, humble and commonplace;
                                       But I commend a young maid e’er so innocent
                                       Into thy soothing hands and to thy saving grace.

                                       Lavish thy bliss on the soul filled with purity;
                                       Give her companions, all paying her great regard;
                                       Unclouded youth and untroubled maturity;
                                       Light myriad hopes up in front of the gracious heart.

                                       Whether the time tolls its final and fatal bell,
                                       Be it a noisy morn, be it a solemn night —
                                       Send to the bed of the last tearful farewell
                                       Thy sweetest angel to take up the soul benign.",
                             :user_id => lermontov.id
lermontov_post_5 = Post.create :title => "The Angel",
                             :body => "The angel was flying through sky in midnight,
                                       And softly he sang in his flight;
                                       And clouds, and stars, and the moon in a throng
                                       Hearkened to that holy song.
                                       He sang of the garden of God's paradise,
                                       Of innocent ghosts in its shade;
                                       He sang of the God, and his vivacious praise
                                       Was glories and unfeigned.
                                       The juvenile soul he carried in arms
                                       For worlds of distress and alarms;
                                       The tune of his charming and heavenly song
                                       Was left in the soul for long.
                                       It roamed on earth many long nights and days,
                                       Filled with a wonderful thirst,
                                       And earth's boring songs could not ever replace
                                       The sounds of heaven it lost.",
                             :user_id => lermontov.id
lermontov_post_6 = Post.create :title => "The Beggar",
                             :body => "By gates of an abode, blessed,
                                       A man stood, asking for donation,
                                       A beggar, cruelly oppressed
                                       By hunger, thirst and deprivation.

                                       He asked just for a piece of bread,
                                       And all his looks were full of anguish,
                                       And was a cold stone laid
                                       Into his stretched arm, thin and languished.

                                       Thus I prayed vainly for your love,
                                       With bitter tears, pine and fervor,
                                       Thus my best senses, that have thrived,
                                       Were victimized by you forever!",
                             :user_id => lermontov.id

yesenin_post_0 = Post.create :title => "Cleared the cornfield, bare the boughs are...",
                             :body => "Cleared the cornfield, bare the boughs are,
                                       From still waters mist is rolling,
                                       Like a wheel beyond the mountains
                                       Has the silent sun gone rolling.

                                       Dozing is the cart track yonder.
                                       In a day dream it was thinking
                                       One won't have to wait much longer
                                       For the coming of grey winter.

                                       Yesterday as mist came creeping
                                       Did not I see in the darkness
                                       Like a foal the bay moon leaping
                                       Into our snow sledge's harness? ",
                             :user_id => yesenin.id
yesenin_post_1 = Post.create :title => "I'll no more go roaming, no more seeking...",
                             :body => "I'll no more go roaming, no more seeking,
                                       No more crushing goosefoot in the wood.
                                       With those oatsheaf locks you tossed when speaking
                                       You have vanished from my dreams for good.


                                       With red berry juice on fair skin glowing,
                                       Beautiful and gentle, you were like
                                       Pink skies when the sun to rest is going
                                       And, like new snow, you were sparkling bright.


                                       Now the seed grain of your eyes has scattered, shrivelled,
                                       Your rare name has melted like a sound,
                                       Though the scent of blameless hands still lingers,
                                       In the folds of a creased shawl is found.


                                       In the still hour when the early sunrise
                                       On the rooftop licks her kitten nose
                                       I hear gentle comment on you coming
                                       From the wind that sings in honeycombs.


                                       What if blue dusk on occasion soulfully
                                       Whisper that you were a song, a dream -
                                       He who shaped your supple figure and smooth shoulders
                                       Truly kissed a mystery supreme.


                                       I'll no more go roaming, no more seeking,
                                       No more crushing goosefoot in the wood.
                                       With those oatsheaf locks you tossed when speaking
                                       You have vanished from my dreams for good. ",
                             :user_id => yesenin.id
yesenin_post_2 = Post.create :title => "I've quit my father's home...",
                             :body => "I've quit my father's home
                                       And left blue Russ. With three
                                       Bright stars the birch-tree grove
                                       Consoles my mother's grief.

                                       The moon has, like a frog,
                                       Upon the pond appeared.
                                       Like apple blossom, locks
                                       Of grey fleck father's beard.

                                       I shall not soon come back!
                                       Long shall snow blow in the yard.
                                       Our one-legged maple shall
                                       Over blue Russ stand guard.

                                       To kiss its raining leaves
                                       Is joy, and none so fine -
                                       The head of the maple-tree
                                       So closely resembles mine. ",
                             :user_id => yesenin.id
yesenin_post_3 = Post.create :title => "No sorrow, no calls, no tears...",
                             :body => "No sorrow, no calls, no tears.
                                       Now it's gone, white foam from apple-tree.
                                       Faded, seized by tarnished golden flares,
                                       I will not feel youthful. Never me.

                                       Now you slow down, that's the matter,
                                       You, my heart, that suffered a cold jet.
                                       And the land of calico birch pattern
                                       Hardly tempts my feet to walk o'er that.

                                       Hobo spirit! You're so rare, rare,
                                       Waking flame in mouth. It's now tense.
                                       Oh, my freshness, that I couldn't spare.
                                       Brawling eyes and overflowing sence!

                                       I've become too greedy for desires.
                                       Life of mine? Perhaps, it was a dream?
                                       Me, alone, in early vernal hours
                                       Riding a pink horse, as it cood seem.

                                       We are mortal. In this world none's ever.
                                       Copper leaves are floating. Let them fly.
                                       Be you blest, you beautiful forever
                                       That has come to blossom and to die.",
                             :user_id => yesenin.id
yesenin_post_4 = Post.create :title => "So it happened and please don't swear...",
                             :body => "So it happened and please don't swear.
                                       I'm a not a word dealer now.
                                       My poor head - it's too hard to bear
                                       And bent-down is my golden brow.

                                       No love for no country, no town.
                                       How could I feel it that time?
                                       I will leave. With a beard grown
                                       I will tramp o'er the land of mine.

                                       I'll forget my books and my poems,
                                       Hang a bag on shoulders, well trimmed.
                                       'Cause a vagabond on his roads
                                       Hears much better songs of the wind.

                                       I will stink like onion and turnip
                                       And abusing the dusk as it goes
                                       I will fool around, staying fornent,
                                       Sniffling loudly with my nose.

                                       And I don't need a fortune better
                                       Just to listen how a blizzard roars.
                                       'Cause without freaks like the latter
                                       I'm unable to live on earth.",
                             :user_id => yesenin.id
yesenin_post_5 = Post.create :title => "Through fields of virgin snow I roam...",
                             :body => "Through fields of virgin snow I roam,
                                       Fresh lilies bursting in my heart.
                                       The dusk to guide my footsteps home
                                       Has lit a bright blue candle-star.

                                       Is it light or dark? I cannot say.
                                       Is that a cock sings, or the breeze?
                                       Perhaps not winter came today
                                       But white swans settled in the fields

                                       How smooth the snow is and how white!
                                       Blood tingles in the frosty air!
                                       Close to my body how I'd like
                                       To press the birch-tree's bosom bare.

                                       What sadness does the forest hold!
                                       The snowbound field what glad surprise!:
                                       O how I'd love now to enfold
                                       Within my arms the willow's thighs. ",
                             :user_id => yesenin.id
yesenin_post_6 = Post.create :title => "Waken me early tomorrow...",
                             :body => "Waken me early tomorrow,
                                       Dear mother, patient and kind!
                                       I'll go past the boundary barrow
                                       To welcome a friend of mine.

                                       In the forest today I noticed
                                       Wheel-tracks where a cart had rolled.
                                       The breeze below dark cloud blowing
                                       Is ruffling the arch of gold.

                                       It will race by tomorrow at daybreak,
                                       With moon-cap ducking under a bush,
                                       And her red tail playfully waving
                                       The mare through the meadow will rush.

                                       Waken me early tomorrow,
                                       Turn the light on in our neat room.
                                       They say I'll become an illustrious
                                       Poet of Russia soon.

                                       I shall laud you and the visitor,
                                       Our stove, cock and humble home…
                                       And the milk that your russet cows give
                                       Shall over my verses flow. ",
                             :user_id => yesenin.id

cat_0 = Category.create :name => 'Category_0', :owner_id => pushkin.id, :owner_type => 'u'
cat_0_0 =Category.create :name => 'Category_0_0', :owner_id => pushkin.id, :owner_type => 'u', :parent_category_id => cat_0.id
cat_0_0_0 = Category.create :name => 'Category_0_0_0', :owner_id => pushkin.id, :owner_type => 'u', :parent_category_id => cat_0_0.id
cat_0_0_1 =Category.create :name => 'Category_0_0_1', :owner_id => pushkin.id, :owner_type => 'u', :parent_category_id => cat_0_0.id
cat_0_1 =Category.create :name => 'Category_0_1', :owner_id => pushkin.id, :owner_type => 'u', :parent_category_id => cat_0.id
cat_1 = Category.create :name => 'Category_1', :owner_id => pushkin.id, :owner_type => 'u'
cat_2 = Category.create :name => 'Category_2', :owner_id => pushkin.id, :owner_type => 'u'
cat_2_0 =Category.create :name => 'Category_2_0', :owner_id => pushkin.id, :owner_type => 'u', :parent_category_id => cat_2.id

cat_0.child_ids = ActiveSupport::JSON.encode [cat_0_0.id, cat_0_0_0.id, cat_0_0_1.id, cat_0_1.id]
cat_0.save
cat_0_0.child_ids = ActiveSupport::JSON.encode [cat_0_0_0.id, cat_0_0_1.id]
cat_0_0.save
cat_0_0_0.child_ids = ActiveSupport::JSON.encode []
cat_0_0_0.save
cat_0_0_1.child_ids = ActiveSupport::JSON.encode []
cat_0_0_1.save
cat_0_1.child_ids = ActiveSupport::JSON.encode []
cat_0_1.save
cat_1.child_ids = ActiveSupport::JSON.encode []
cat_1.save
cat_2.child_ids = ActiveSupport::JSON.encode [cat_2_0.id]
cat_2.save
cat_2_0.child_ids = ActiveSupport::JSON.encode []
cat_2_0.save

Blogline.create :item_id => yesenin_post_6.id, :item_type => 'p', :owner_id => pushkin.id, :owner_type => 'u'
blogline_p_9 = Blogline.create :item_id => pushkin_post_6.id, :item_type => 'p', :owner_id => pushkin.id, :owner_type => 'u'
Blogline.create :item_id => yesenin_post_5.id, :item_type => 'p', :owner_id => pushkin.id, :owner_type => 'u'
blogline_p_8 = Blogline.create :item_id => pushkin_post_5.id, :item_type => 'p', :owner_id => pushkin.id, :owner_type => 'u'
Blogline.create :item_id => lermontov_post_6.id, :item_type => 'p', :owner_id => pushkin.id, :owner_type => 'u'
Blogline.create :item_id => lermontov_post_5.id, :item_type => 'p', :owner_id => pushkin.id, :owner_type => 'u'
Blogline.create :item_id => yesenin_post_4.id, :item_type => 'p', :owner_id => pushkin.id, :owner_type => 'u'
blogline_p_7 = Blogline.create :item_id => pushkin_post_4.id, :item_type => 'p', :owner_id => pushkin.id, :owner_type => 'u'
Blogline.create :item_id => lermontov_post_4.id, :item_type => 'p', :owner_id => pushkin.id, :owner_type => 'u'
blogline_p_6 = Blogline.create :item_id => pushkin_comment_2.id, :item_type => 'c', :owner_id => pushkin.id, :owner_type => 'u'
Blogline.create :item_id => lermontov_post_3.id, :item_type => 'p', :owner_id => pushkin.id, :owner_type => 'u'
Blogline.create :item_id => lermontov_post_2.id, :item_type => 'p', :owner_id => pushkin.id, :owner_type => 'u'
Blogline.create :item_id => yesenin_post_3.id, :item_type => 'p', :owner_id => pushkin.id, :owner_type => 'u'
blogline_p_5 = Blogline.create :item_id => pushkin_post_3.id, :item_type => 'p', :owner_id => pushkin.id, :owner_type => 'u', :category_ids => "[#{cat_0_0.id},#{cat_2_0.id}]"
blogline_p_4 = Blogline.create :item_id => pushkin_post_2.id, :item_type => 'p', :owner_id => pushkin.id, :owner_type => 'u', :category_ids => "[#{cat_0.id}]"
blogline_p_3 = Blogline.create :item_id => pushkin_comment_1.id, :item_type => 'c', :owner_id => pushkin.id, :owner_type => 'u', :category_ids => "[#{cat_2.id}]"
Blogline.create :item_id => yesenin_post_2.id, :item_type => 'p', :owner_id => pushkin.id, :owner_type => 'u'
Blogline.create :item_id => lermontov_post_1.id, :item_type => 'p', :owner_id => pushkin.id, :owner_type => 'u'
Blogline.create :item_id => yesenin_post_1.id, :item_type => 'p', :owner_id => pushkin.id, :owner_type => 'u'
blogline_p_2 = Blogline.create :item_id => pushkin_post_1.id, :item_type => 'p', :owner_id => pushkin.id, :owner_type => 'u'
blogline_p_1 = Blogline.create :item_id => pushkin_comment_0.id, :item_type => 'c', :owner_id => pushkin.id, :owner_type => 'u', :category_ids => "[#{cat_0_0_1.id}]"
Blogline.create :item_id => lermontov_post_0.id, :item_type => 'p', :owner_id => pushkin.id, :owner_type => 'u'
Blogline.create :item_id => yesenin_post_0.id, :item_type => 'p', :owner_id => pushkin.id, :owner_type => 'u'
blogline_p_0 = Blogline.create :item_id => pushkin_post_0.id, :item_type => 'p', :owner_id => pushkin.id, :owner_type => 'u', :category_ids => "[#{cat_0_0_0.id},#{cat_2_0.id}]"

BloglinesCategories.create :category_id => cat_0_0.id, :blog_item_id => blogline_p_5.id, :blog_item_created_at => blogline_p_5.created_at, :item_id => blogline_p_5.item_id, :item_type => blogline_p_5.item_type
BloglinesCategories.create :category_id => cat_2_0.id, :blog_item_id => blogline_p_5.id, :blog_item_created_at => blogline_p_5.created_at, :item_id => blogline_p_5.item_id, :item_type => blogline_p_5.item_type
BloglinesCategories.create :category_id => cat_0.id, :blog_item_id => blogline_p_4.id, :blog_item_created_at => blogline_p_4.created_at, :item_id => blogline_p_4.item_id, :item_type => blogline_p_4.item_type
BloglinesCategories.create :category_id => cat_2.id, :blog_item_id => blogline_p_3.id, :blog_item_created_at => blogline_p_3.created_at, :item_id => blogline_p_3.item_id, :item_type => blogline_p_3.item_type
BloglinesCategories.create :category_id => cat_0_0_1.id, :blog_item_id => blogline_p_1.id, :blog_item_created_at => blogline_p_1.created_at, :item_id => blogline_p_1.item_id, :item_type => blogline_p_1.item_type
BloglinesCategories.create :category_id => cat_0_0_0.id, :blog_item_id => blogline_p_0.id, :blog_item_created_at => blogline_p_0.created_at, :item_id => blogline_p_0.item_id, :item_type => blogline_p_0.item_type
BloglinesCategories.create :category_id => cat_2_0.id, :blog_item_id => blogline_p_0.id, :blog_item_created_at => blogline_p_0.created_at, :item_id => blogline_p_0.item_id, :item_type => blogline_p_0.item_type

Favoriteline.create :item_id => pushkin_post_4.id, :item_type => 'p', :owner_id => pushkin.id, :owner_type => 'u'
Favoriteline.create :item_id => yesenin_post_2.id, :item_type => 'p', :owner_id => pushkin.id, :owner_type => 'u'
Favoriteline.create :item_id => yesenin_post_4.id, :item_type => 'p', :owner_id => pushkin.id, :owner_type => 'u'
Favoriteline.create :item_id => pushkin_comment_1.id, :item_type => 'c', :owner_id => pushkin.id, :owner_type => 'u'
Favoriteline.create :item_id => yesenin_post_6.id, :item_type => 'p', :owner_id => pushkin.id, :owner_type => 'u'
Favoriteline.create :item_id => pushkin_post_3.id, :item_type => 'p', :owner_id => pushkin.id, :owner_type => 'u'
Favoriteline.create :item_id => pushkin_post_1.id, :item_type => 'p', :owner_id => pushkin.id, :owner_type => 'u'
Favoriteline.create :item_id => lermontov_post_6.id, :item_type => 'p', :owner_id => pushkin.id, :owner_type => 'u'
Favoriteline.create :item_id => lermontov_post_2.id, :item_type => 'p', :owner_id => pushkin.id, :owner_type => 'u'
Favoriteline.create :item_id => lermontov_post_3.id, :item_type => 'p', :owner_id => pushkin.id, :owner_type => 'u'
Favoriteline.create :item_id => yesenin_post_1.id, :item_type => 'p', :owner_id => pushkin.id, :owner_type => 'u'
Favoriteline.create :item_id => lermontov_post_1.id, :item_type => 'p', :owner_id => pushkin.id, :owner_type => 'u'
Favoriteline.create :item_id => pushkin_comment_2.id, :item_type => 'c', :owner_id => pushkin.id, :owner_type => 'u'