{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.Mp4Settings
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.Mp4Settings where

import Network.AWS.Lens
import Network.AWS.MediaConvert.Types.Mp4CslgAtom
import Network.AWS.MediaConvert.Types.Mp4FreeSpaceBox
import Network.AWS.MediaConvert.Types.Mp4MoovPlacement
import Network.AWS.Prelude

-- | Settings for MP4 Container
--
-- /See:/ 'mp4Settings' smart constructor.
data Mp4Settings = Mp4Settings'{_mMoovPlacement ::
                                !(Maybe Mp4MoovPlacement),
                                _mFreeSpaceBox :: !(Maybe Mp4FreeSpaceBox),
                                _mMp4MajorBrand :: !(Maybe Text),
                                _mCslgAtom :: !(Maybe Mp4CslgAtom)}
                     deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Mp4Settings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mMoovPlacement' - Undocumented member.
--
-- * 'mFreeSpaceBox' - Undocumented member.
--
-- * 'mMp4MajorBrand' - Overrides the "Major Brand" field in the output file. Usually not necessary to specify.
--
-- * 'mCslgAtom' - Undocumented member.
mp4Settings
    :: Mp4Settings
mp4Settings
  = Mp4Settings'{_mMoovPlacement = Nothing,
                 _mFreeSpaceBox = Nothing, _mMp4MajorBrand = Nothing,
                 _mCslgAtom = Nothing}

-- | Undocumented member.
mMoovPlacement :: Lens' Mp4Settings (Maybe Mp4MoovPlacement)
mMoovPlacement = lens _mMoovPlacement (\ s a -> s{_mMoovPlacement = a})

-- | Undocumented member.
mFreeSpaceBox :: Lens' Mp4Settings (Maybe Mp4FreeSpaceBox)
mFreeSpaceBox = lens _mFreeSpaceBox (\ s a -> s{_mFreeSpaceBox = a})

-- | Overrides the "Major Brand" field in the output file. Usually not necessary to specify.
mMp4MajorBrand :: Lens' Mp4Settings (Maybe Text)
mMp4MajorBrand = lens _mMp4MajorBrand (\ s a -> s{_mMp4MajorBrand = a})

-- | Undocumented member.
mCslgAtom :: Lens' Mp4Settings (Maybe Mp4CslgAtom)
mCslgAtom = lens _mCslgAtom (\ s a -> s{_mCslgAtom = a})

instance FromJSON Mp4Settings where
        parseJSON
          = withObject "Mp4Settings"
              (\ x ->
                 Mp4Settings' <$>
                   (x .:? "moovPlacement") <*> (x .:? "freeSpaceBox")
                     <*> (x .:? "mp4MajorBrand")
                     <*> (x .:? "cslgAtom"))

instance Hashable Mp4Settings where

instance NFData Mp4Settings where

instance ToJSON Mp4Settings where
        toJSON Mp4Settings'{..}
          = object
              (catMaybes
                 [("moovPlacement" .=) <$> _mMoovPlacement,
                  ("freeSpaceBox" .=) <$> _mFreeSpaceBox,
                  ("mp4MajorBrand" .=) <$> _mMp4MajorBrand,
                  ("cslgAtom" .=) <$> _mCslgAtom])
