{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.S3.Types.CopyObjectResult
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.S3.Types.CopyObjectResult where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.S3.Internal

-- | /See:/ 'copyObjectResult' smart constructor.
data CopyObjectResult = CopyObjectResult'{_corETag ::
                                          !(Maybe ETag),
                                          _corLastModified :: !(Maybe RFC822)}
                          deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CopyObjectResult' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'corETag' - Undocumented member.
--
-- * 'corLastModified' - Undocumented member.
copyObjectResult
    :: CopyObjectResult
copyObjectResult
  = CopyObjectResult'{_corETag = Nothing,
                      _corLastModified = Nothing}

-- | Undocumented member.
corETag :: Lens' CopyObjectResult (Maybe ETag)
corETag = lens _corETag (\ s a -> s{_corETag = a})

-- | Undocumented member.
corLastModified :: Lens' CopyObjectResult (Maybe UTCTime)
corLastModified = lens _corLastModified (\ s a -> s{_corLastModified = a}) . mapping _Time

instance FromXML CopyObjectResult where
        parseXML x
          = CopyObjectResult' <$>
              (x .@? "ETag") <*> (x .@? "LastModified")

instance Hashable CopyObjectResult where

instance NFData CopyObjectResult where
