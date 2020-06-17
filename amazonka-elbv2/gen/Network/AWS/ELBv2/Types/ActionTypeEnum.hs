{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ELBv2.Types.ActionTypeEnum
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.ELBv2.Types.ActionTypeEnum (
  ActionTypeEnum (
    ..
    , Forward
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ActionTypeEnum = ActionTypeEnum' (CI Text)
                        deriving (Eq, Ord, Read, Show, Data, Typeable,
                                  Generic)

pattern Forward :: ActionTypeEnum
pattern Forward = ActionTypeEnum' "forward"

{-# COMPLETE
  Forward,
  ActionTypeEnum' #-}

instance FromText ActionTypeEnum where
    parser = (ActionTypeEnum' . mk) <$> takeText

instance ToText ActionTypeEnum where
    toText (ActionTypeEnum' ci) = original ci

-- | Represents an enum of /known/ $ActionTypeEnum.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
--   fromEnum is a partial function, and will error on values unknown at generation time.
instance Enum ActionTypeEnum where
    toEnum i = case i of
        0 -> Forward
        _ -> (error . showText) $ "Unknown index for ActionTypeEnum: " <> toText i
    fromEnum x = case x of
        Forward -> 0
        ActionTypeEnum' name -> (error . showText) $ "Unknown ActionTypeEnum: " <> original name

-- | Represents the bounds of /known/ $ActionTypeEnum.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
instance Bounded ActionTypeEnum where
    minBound = Forward
    maxBound = Forward

instance Hashable     ActionTypeEnum
instance NFData       ActionTypeEnum
instance ToByteString ActionTypeEnum
instance ToQuery      ActionTypeEnum
instance ToHeader     ActionTypeEnum

instance FromXML ActionTypeEnum where
    parseXML = parseXMLText "ActionTypeEnum"
