{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.DirectInternetAccess
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.SageMaker.Types.DirectInternetAccess (
  DirectInternetAccess (
    ..
    , Disabled
    , Enabled
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data DirectInternetAccess = DirectInternetAccess' (CI
                                                     Text)
                              deriving (Eq, Ord, Read, Show, Data, Typeable,
                                        Generic)

pattern Disabled :: DirectInternetAccess
pattern Disabled = DirectInternetAccess' "Disabled"

pattern Enabled :: DirectInternetAccess
pattern Enabled = DirectInternetAccess' "Enabled"

{-# COMPLETE
  Disabled,
  Enabled,
  DirectInternetAccess' #-}

instance FromText DirectInternetAccess where
    parser = (DirectInternetAccess' . mk) <$> takeText

instance ToText DirectInternetAccess where
    toText (DirectInternetAccess' ci) = original ci

-- | Represents an enum of /known/ $DirectInternetAccess.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
--   fromEnum is a partial function, and will error on values unknown at generation time.
instance Enum DirectInternetAccess where
    toEnum i = case i of
        0 -> Disabled
        1 -> Enabled
        _ -> (error . showText) $ "Unknown index for DirectInternetAccess: " <> toText i
    fromEnum x = case x of
        Disabled -> 0
        Enabled -> 1
        DirectInternetAccess' name -> (error . showText) $ "Unknown DirectInternetAccess: " <> original name

-- | Represents the bounds of /known/ $DirectInternetAccess.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
instance Bounded DirectInternetAccess where
    minBound = Disabled
    maxBound = Enabled

instance Hashable     DirectInternetAccess
instance NFData       DirectInternetAccess
instance ToByteString DirectInternetAccess
instance ToQuery      DirectInternetAccess
instance ToHeader     DirectInternetAccess

instance ToJSON DirectInternetAccess where
    toJSON = toJSONText

instance FromJSON DirectInternetAccess where
    parseJSON = parseJSONText "DirectInternetAccess"
