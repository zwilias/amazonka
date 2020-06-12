{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.S3.Types.S3ServiceError
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.S3.Types.S3ServiceError where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.S3.Internal

-- | /See:/ 's3ServiceError' smart constructor.
data S3ServiceError = S3ServiceError'{_sseVersionId
                                      :: !(Maybe ObjectVersionId),
                                      _sseKey :: !(Maybe ObjectKey),
                                      _sseCode :: !(Maybe Text),
                                      _sseMessage :: !(Maybe Text)}
                        deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'S3ServiceError' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sseVersionId' - Undocumented member.
--
-- * 'sseKey' - Undocumented member.
--
-- * 'sseCode' - Undocumented member.
--
-- * 'sseMessage' - Undocumented member.
s3ServiceError
    :: S3ServiceError
s3ServiceError
  = S3ServiceError'{_sseVersionId = Nothing,
                    _sseKey = Nothing, _sseCode = Nothing,
                    _sseMessage = Nothing}

-- | Undocumented member.
sseVersionId :: Lens' S3ServiceError (Maybe ObjectVersionId)
sseVersionId = lens _sseVersionId (\ s a -> s{_sseVersionId = a})

-- | Undocumented member.
sseKey :: Lens' S3ServiceError (Maybe ObjectKey)
sseKey = lens _sseKey (\ s a -> s{_sseKey = a})

-- | Undocumented member.
sseCode :: Lens' S3ServiceError (Maybe Text)
sseCode = lens _sseCode (\ s a -> s{_sseCode = a})

-- | Undocumented member.
sseMessage :: Lens' S3ServiceError (Maybe Text)
sseMessage = lens _sseMessage (\ s a -> s{_sseMessage = a})

instance FromXML S3ServiceError where
        parseXML x
          = S3ServiceError' <$>
              (x .@? "VersionId") <*> (x .@? "Key") <*>
                (x .@? "Code")
                <*> (x .@? "Message")

instance Hashable S3ServiceError where

instance NFData S3ServiceError where
