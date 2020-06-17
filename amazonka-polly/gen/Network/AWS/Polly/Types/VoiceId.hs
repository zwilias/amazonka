{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Polly.Types.VoiceId
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Polly.Types.VoiceId (
  VoiceId (
    ..
    , Aditi
    , Amy
    , Astrid
    , Brian
    , Carla
    , Carmen
    , Celine
    , Chantal
    , Conchita
    , Cristiano
    , Dora
    , Emma
    , Enrique
    , Ewa
    , Filiz
    , Geraint
    , Giorgio
    , Gwyneth
    , Hans
    , Ines
    , Ivy
    , Jacek
    , Jan
    , Joanna
    , Joey
    , Justin
    , Karl
    , Kendra
    , Kimberly
    , Liv
    , Lotte
    , Mads
    , Maja
    , Marlene
    , Mathieu
    , Matthew
    , Maxim
    , Miguel
    , Mizuki
    , Naja
    , Nicole
    , Penelope
    , Raveena
    , Ricardo
    , Ruben
    , Russell
    , Salli
    , Seoyeon
    , Takumi
    , Tatyana
    , Vicki
    , Vitoria
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data VoiceId = VoiceId' (CI Text)
                 deriving (Eq, Ord, Read, Show, Data, Typeable,
                           Generic)

pattern Aditi :: VoiceId
pattern Aditi = VoiceId' "Aditi"

pattern Amy :: VoiceId
pattern Amy = VoiceId' "Amy"

pattern Astrid :: VoiceId
pattern Astrid = VoiceId' "Astrid"

pattern Brian :: VoiceId
pattern Brian = VoiceId' "Brian"

pattern Carla :: VoiceId
pattern Carla = VoiceId' "Carla"

pattern Carmen :: VoiceId
pattern Carmen = VoiceId' "Carmen"

pattern Celine :: VoiceId
pattern Celine = VoiceId' "Celine"

pattern Chantal :: VoiceId
pattern Chantal = VoiceId' "Chantal"

pattern Conchita :: VoiceId
pattern Conchita = VoiceId' "Conchita"

pattern Cristiano :: VoiceId
pattern Cristiano = VoiceId' "Cristiano"

pattern Dora :: VoiceId
pattern Dora = VoiceId' "Dora"

pattern Emma :: VoiceId
pattern Emma = VoiceId' "Emma"

pattern Enrique :: VoiceId
pattern Enrique = VoiceId' "Enrique"

pattern Ewa :: VoiceId
pattern Ewa = VoiceId' "Ewa"

pattern Filiz :: VoiceId
pattern Filiz = VoiceId' "Filiz"

pattern Geraint :: VoiceId
pattern Geraint = VoiceId' "Geraint"

pattern Giorgio :: VoiceId
pattern Giorgio = VoiceId' "Giorgio"

pattern Gwyneth :: VoiceId
pattern Gwyneth = VoiceId' "Gwyneth"

pattern Hans :: VoiceId
pattern Hans = VoiceId' "Hans"

pattern Ines :: VoiceId
pattern Ines = VoiceId' "Ines"

pattern Ivy :: VoiceId
pattern Ivy = VoiceId' "Ivy"

pattern Jacek :: VoiceId
pattern Jacek = VoiceId' "Jacek"

pattern Jan :: VoiceId
pattern Jan = VoiceId' "Jan"

pattern Joanna :: VoiceId
pattern Joanna = VoiceId' "Joanna"

pattern Joey :: VoiceId
pattern Joey = VoiceId' "Joey"

pattern Justin :: VoiceId
pattern Justin = VoiceId' "Justin"

pattern Karl :: VoiceId
pattern Karl = VoiceId' "Karl"

pattern Kendra :: VoiceId
pattern Kendra = VoiceId' "Kendra"

pattern Kimberly :: VoiceId
pattern Kimberly = VoiceId' "Kimberly"

pattern Liv :: VoiceId
pattern Liv = VoiceId' "Liv"

pattern Lotte :: VoiceId
pattern Lotte = VoiceId' "Lotte"

pattern Mads :: VoiceId
pattern Mads = VoiceId' "Mads"

pattern Maja :: VoiceId
pattern Maja = VoiceId' "Maja"

pattern Marlene :: VoiceId
pattern Marlene = VoiceId' "Marlene"

pattern Mathieu :: VoiceId
pattern Mathieu = VoiceId' "Mathieu"

pattern Matthew :: VoiceId
pattern Matthew = VoiceId' "Matthew"

pattern Maxim :: VoiceId
pattern Maxim = VoiceId' "Maxim"

pattern Miguel :: VoiceId
pattern Miguel = VoiceId' "Miguel"

pattern Mizuki :: VoiceId
pattern Mizuki = VoiceId' "Mizuki"

pattern Naja :: VoiceId
pattern Naja = VoiceId' "Naja"

pattern Nicole :: VoiceId
pattern Nicole = VoiceId' "Nicole"

pattern Penelope :: VoiceId
pattern Penelope = VoiceId' "Penelope"

pattern Raveena :: VoiceId
pattern Raveena = VoiceId' "Raveena"

pattern Ricardo :: VoiceId
pattern Ricardo = VoiceId' "Ricardo"

pattern Ruben :: VoiceId
pattern Ruben = VoiceId' "Ruben"

pattern Russell :: VoiceId
pattern Russell = VoiceId' "Russell"

pattern Salli :: VoiceId
pattern Salli = VoiceId' "Salli"

pattern Seoyeon :: VoiceId
pattern Seoyeon = VoiceId' "Seoyeon"

pattern Takumi :: VoiceId
pattern Takumi = VoiceId' "Takumi"

pattern Tatyana :: VoiceId
pattern Tatyana = VoiceId' "Tatyana"

pattern Vicki :: VoiceId
pattern Vicki = VoiceId' "Vicki"

pattern Vitoria :: VoiceId
pattern Vitoria = VoiceId' "Vitoria"

{-# COMPLETE
  Aditi,
  Amy,
  Astrid,
  Brian,
  Carla,
  Carmen,
  Celine,
  Chantal,
  Conchita,
  Cristiano,
  Dora,
  Emma,
  Enrique,
  Ewa,
  Filiz,
  Geraint,
  Giorgio,
  Gwyneth,
  Hans,
  Ines,
  Ivy,
  Jacek,
  Jan,
  Joanna,
  Joey,
  Justin,
  Karl,
  Kendra,
  Kimberly,
  Liv,
  Lotte,
  Mads,
  Maja,
  Marlene,
  Mathieu,
  Matthew,
  Maxim,
  Miguel,
  Mizuki,
  Naja,
  Nicole,
  Penelope,
  Raveena,
  Ricardo,
  Ruben,
  Russell,
  Salli,
  Seoyeon,
  Takumi,
  Tatyana,
  Vicki,
  Vitoria,
  VoiceId' #-}

instance FromText VoiceId where
    parser = (VoiceId' . mk) <$> takeText

instance ToText VoiceId where
    toText (VoiceId' ci) = original ci

-- | Represents an enum of /known/ $VoiceId.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
--   fromEnum is a partial function, and will error on values unknown at generation time.
instance Enum VoiceId where
    toEnum i = case i of
        0 -> Aditi
        1 -> Amy
        2 -> Astrid
        3 -> Brian
        4 -> Carla
        5 -> Carmen
        6 -> Celine
        7 -> Chantal
        8 -> Conchita
        9 -> Cristiano
        10 -> Dora
        11 -> Emma
        12 -> Enrique
        13 -> Ewa
        14 -> Filiz
        15 -> Geraint
        16 -> Giorgio
        17 -> Gwyneth
        18 -> Hans
        19 -> Ines
        20 -> Ivy
        21 -> Jacek
        22 -> Jan
        23 -> Joanna
        24 -> Joey
        25 -> Justin
        26 -> Karl
        27 -> Kendra
        28 -> Kimberly
        29 -> Liv
        30 -> Lotte
        31 -> Mads
        32 -> Maja
        33 -> Marlene
        34 -> Mathieu
        35 -> Matthew
        36 -> Maxim
        37 -> Miguel
        38 -> Mizuki
        39 -> Naja
        40 -> Nicole
        41 -> Penelope
        42 -> Raveena
        43 -> Ricardo
        44 -> Ruben
        45 -> Russell
        46 -> Salli
        47 -> Seoyeon
        48 -> Takumi
        49 -> Tatyana
        50 -> Vicki
        51 -> Vitoria
        _ -> (error . showText) $ "Unknown index for VoiceId: " <> toText i
    fromEnum x = case x of
        Aditi -> 0
        Amy -> 1
        Astrid -> 2
        Brian -> 3
        Carla -> 4
        Carmen -> 5
        Celine -> 6
        Chantal -> 7
        Conchita -> 8
        Cristiano -> 9
        Dora -> 10
        Emma -> 11
        Enrique -> 12
        Ewa -> 13
        Filiz -> 14
        Geraint -> 15
        Giorgio -> 16
        Gwyneth -> 17
        Hans -> 18
        Ines -> 19
        Ivy -> 20
        Jacek -> 21
        Jan -> 22
        Joanna -> 23
        Joey -> 24
        Justin -> 25
        Karl -> 26
        Kendra -> 27
        Kimberly -> 28
        Liv -> 29
        Lotte -> 30
        Mads -> 31
        Maja -> 32
        Marlene -> 33
        Mathieu -> 34
        Matthew -> 35
        Maxim -> 36
        Miguel -> 37
        Mizuki -> 38
        Naja -> 39
        Nicole -> 40
        Penelope -> 41
        Raveena -> 42
        Ricardo -> 43
        Ruben -> 44
        Russell -> 45
        Salli -> 46
        Seoyeon -> 47
        Takumi -> 48
        Tatyana -> 49
        Vicki -> 50
        Vitoria -> 51
        VoiceId' name -> (error . showText) $ "Unknown VoiceId: " <> original name

-- | Represents the bounds of /known/ $VoiceId.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
instance Bounded VoiceId where
    minBound = Aditi
    maxBound = Vitoria

instance Hashable     VoiceId
instance NFData       VoiceId
instance ToByteString VoiceId
instance ToQuery      VoiceId
instance ToHeader     VoiceId

instance ToJSON VoiceId where
    toJSON = toJSONText

instance FromJSON VoiceId where
    parseJSON = parseJSONText "VoiceId"
