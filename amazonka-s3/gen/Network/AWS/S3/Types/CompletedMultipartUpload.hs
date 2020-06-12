{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.S3.Types.CompletedMultipartUpload
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.S3.Types.CompletedMultipartUpload where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.S3.Internal
import Network.AWS.S3.Types.CompletedPart

-- | /See:/ 'completedMultipartUpload' smart constructor.
newtype CompletedMultipartUpload = CompletedMultipartUpload'{_cmuParts
                                                             ::
                                                             Maybe
                                                               (List1
                                                                  CompletedPart)}
                                     deriving (Eq, Read, Show, Data, Typeable,
                                               Generic)

-- | Creates a value of 'CompletedMultipartUpload' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cmuParts' - Undocumented member.
completedMultipartUpload
    :: CompletedMultipartUpload
completedMultipartUpload
  = CompletedMultipartUpload'{_cmuParts = Nothing}

-- | Undocumented member.
cmuParts :: Lens' CompletedMultipartUpload (Maybe (NonEmpty CompletedPart))
cmuParts = lens _cmuParts (\ s a -> s{_cmuParts = a}) . mapping _List1

instance Hashable CompletedMultipartUpload where

instance NFData CompletedMultipartUpload where

instance ToXML CompletedMultipartUpload where
        toXML CompletedMultipartUpload'{..}
          = mconcat [toXML (toXMLList "Part" <$> _cmuParts)]
