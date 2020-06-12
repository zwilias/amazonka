{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.S3.Types.SourceSelectionCriteria
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.S3.Types.SourceSelectionCriteria where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.S3.Internal
import Network.AWS.S3.Types.SseKMSEncryptedObjects

-- | Container for filters that define which source objects should be replicated.
--
-- /See:/ 'sourceSelectionCriteria' smart constructor.
newtype SourceSelectionCriteria = SourceSelectionCriteria'{_sscSseKMSEncryptedObjects
                                                           ::
                                                           Maybe
                                                             SseKMSEncryptedObjects}
                                    deriving (Eq, Read, Show, Data, Typeable,
                                              Generic)

-- | Creates a value of 'SourceSelectionCriteria' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sscSseKMSEncryptedObjects' - Container for filter information of selection of KMS Encrypted S3 objects.
sourceSelectionCriteria
    :: SourceSelectionCriteria
sourceSelectionCriteria
  = SourceSelectionCriteria'{_sscSseKMSEncryptedObjects
                               = Nothing}

-- | Container for filter information of selection of KMS Encrypted S3 objects.
sscSseKMSEncryptedObjects :: Lens' SourceSelectionCriteria (Maybe SseKMSEncryptedObjects)
sscSseKMSEncryptedObjects = lens _sscSseKMSEncryptedObjects (\ s a -> s{_sscSseKMSEncryptedObjects = a})

instance FromXML SourceSelectionCriteria where
        parseXML x
          = SourceSelectionCriteria' <$>
              (x .@? "SseKmsEncryptedObjects")

instance Hashable SourceSelectionCriteria where

instance NFData SourceSelectionCriteria where

instance ToXML SourceSelectionCriteria where
        toXML SourceSelectionCriteria'{..}
          = mconcat
              ["SseKmsEncryptedObjects" @=
                 _sscSseKMSEncryptedObjects]
