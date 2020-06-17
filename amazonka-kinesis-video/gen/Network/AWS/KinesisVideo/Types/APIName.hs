{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.KinesisVideo.Types.APIName
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.KinesisVideo.Types.APIName (
  APIName (
    ..
    , GetMedia
    , GetMediaForFragmentList
    , ListFragments
    , PutMedia
    )
  ) where

import Data.CaseInsensitive
import Network.AWS.Prelude

data APIName = APIName' (CI Text)
                 deriving (Eq, Ord, Read, Show, Data, Typeable,
                           Generic)

pattern GetMedia :: APIName
pattern GetMedia = APIName' "GET_MEDIA"

pattern GetMediaForFragmentList :: APIName
pattern GetMediaForFragmentList = APIName' "GET_MEDIA_FOR_FRAGMENT_LIST"

pattern ListFragments :: APIName
pattern ListFragments = APIName' "LIST_FRAGMENTS"

pattern PutMedia :: APIName
pattern PutMedia = APIName' "PUT_MEDIA"

{-# COMPLETE
  GetMedia,
  GetMediaForFragmentList,
  ListFragments,
  PutMedia,
  APIName' #-}

instance FromText APIName where
    parser = (APIName' . mk) <$> takeText

instance ToText APIName where
    toText (APIName' ci) = original ci

-- | Represents an enum of /known/ $APIName.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
--   fromEnum is a partial function, and will error on values unknown at generation time.
instance Enum APIName where
    toEnum i = case i of
        0 -> GetMedia
        1 -> GetMediaForFragmentList
        2 -> ListFragments
        3 -> PutMedia
        _ -> (error . showText) $ "Unknown index for APIName: " <> toText i
    fromEnum x = case x of
        GetMedia -> 0
        GetMediaForFragmentList -> 1
        ListFragments -> 2
        PutMedia -> 3
        APIName' name -> (error . showText) $ "Unknown APIName: " <> original name

-- | Represents the bounds of /known/ $APIName.
--   AWS may have added more since the source was generated.
--   This instance exists only for backward compatibility.
instance Bounded APIName where
    minBound = GetMedia
    maxBound = PutMedia

instance Hashable     APIName
instance NFData       APIName
instance ToByteString APIName
instance ToQuery      APIName
instance ToHeader     APIName

instance ToJSON APIName where
    toJSON = toJSONText
