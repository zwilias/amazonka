{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.S3.Types.LoggingEnabled
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.S3.Types.LoggingEnabled where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.S3.Internal
import Network.AWS.S3.Types.TargetGrant

-- | Container for logging information. Presence of this element indicates that logging is enabled. Parameters TargetBucket and TargetPrefix are required in this case.
--
-- /See:/ 'loggingEnabled' smart constructor.
data LoggingEnabled = LoggingEnabled'{_leTargetGrants
                                      :: !(Maybe [TargetGrant]),
                                      _leTargetBucket :: !Text,
                                      _leTargetPrefix :: !Text}
                        deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'LoggingEnabled' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'leTargetGrants' - Undocumented member.
--
-- * 'leTargetBucket' - Specifies the bucket where you want Amazon S3 to store server access logs. You can have your logs delivered to any bucket that you own, including the same bucket that is being logged. You can also configure multiple buckets to deliver their logs to the same target bucket. In this case you should choose a different TargetPrefix for each source bucket so that the delivered log files can be distinguished by key.
--
-- * 'leTargetPrefix' - This element lets you specify a prefix for the keys that the log files will be stored under.
loggingEnabled
    :: Text -- ^ 'leTargetBucket'
    -> Text -- ^ 'leTargetPrefix'
    -> LoggingEnabled
loggingEnabled pTargetBucket_ pTargetPrefix_
  = LoggingEnabled'{_leTargetGrants = Nothing,
                    _leTargetBucket = pTargetBucket_,
                    _leTargetPrefix = pTargetPrefix_}

-- | Undocumented member.
leTargetGrants :: Lens' LoggingEnabled [TargetGrant]
leTargetGrants = lens _leTargetGrants (\ s a -> s{_leTargetGrants = a}) . _Default . _Coerce

-- | Specifies the bucket where you want Amazon S3 to store server access logs. You can have your logs delivered to any bucket that you own, including the same bucket that is being logged. You can also configure multiple buckets to deliver their logs to the same target bucket. In this case you should choose a different TargetPrefix for each source bucket so that the delivered log files can be distinguished by key.
leTargetBucket :: Lens' LoggingEnabled Text
leTargetBucket = lens _leTargetBucket (\ s a -> s{_leTargetBucket = a})

-- | This element lets you specify a prefix for the keys that the log files will be stored under.
leTargetPrefix :: Lens' LoggingEnabled Text
leTargetPrefix = lens _leTargetPrefix (\ s a -> s{_leTargetPrefix = a})

instance FromXML LoggingEnabled where
        parseXML x
          = LoggingEnabled' <$>
              (x .@? "TargetGrants" .!@ mempty >>=
                 may (parseXMLList "Grant"))
                <*> (x .@ "TargetBucket")
                <*> (x .@ "TargetPrefix")

instance Hashable LoggingEnabled where

instance NFData LoggingEnabled where

instance ToXML LoggingEnabled where
        toXML LoggingEnabled'{..}
          = mconcat
              ["TargetGrants" @=
                 toXML (toXMLList "Grant" <$> _leTargetGrants),
               "TargetBucket" @= _leTargetBucket,
               "TargetPrefix" @= _leTargetPrefix]
