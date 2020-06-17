{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudFormation.Types.OnFailure
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.CloudFormation.Types.OnFailure (
  OnFailure (
    ..
    , Delete
    , DoNothing
    , Rollback
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data OnFailure = OnFailure' (CI Text)
                   deriving (Eq, Ord, Read, Show, Data, Typeable,
                             Generic)

pattern Delete :: OnFailure
pattern Delete = OnFailure' "DELETE"

pattern DoNothing :: OnFailure
pattern DoNothing = OnFailure' "DO_NOTHING"

pattern Rollback :: OnFailure
pattern Rollback = OnFailure' "ROLLBACK"

{-# COMPLETE
  Delete,
  DoNothing,
  Rollback,
  OnFailure' #-}

instance FromText OnFailure where
    parser = (OnFailure' . mk) <$> takeText

instance ToText OnFailure where
    toText (OnFailure' ci) = original ci

-- | Represents an enum of /known/ $OnFailure.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
--   fromEnum is a partial function, and will error on values unknown at generation time.
instance Enum OnFailure where
    toEnum i = case i of
        0 -> Delete
        1 -> DoNothing
        2 -> Rollback
        _ -> (error . showText) $ "Unknown index for OnFailure: " <> toText i
    fromEnum x = case x of
        Delete -> 0
        DoNothing -> 1
        Rollback -> 2
        OnFailure' name -> (error . showText) $ "Unknown OnFailure: " <> original name

-- | Represents the bounds of /known/ $OnFailure.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
instance Bounded OnFailure where
    minBound = Delete
    maxBound = Rollback

instance Hashable     OnFailure
instance NFData       OnFailure
instance ToByteString OnFailure
instance ToQuery      OnFailure
instance ToHeader     OnFailure
