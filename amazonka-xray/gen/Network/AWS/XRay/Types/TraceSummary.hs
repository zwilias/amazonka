{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.XRay.Types.TraceSummary
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.XRay.Types.TraceSummary where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.XRay.Types.HTTP
import Network.AWS.XRay.Types.ServiceId
import Network.AWS.XRay.Types.TraceUser
import Network.AWS.XRay.Types.ValueWithServiceIds

-- | Metadata generated from the segment documents in a trace.
--
--
--
-- /See:/ 'traceSummary' smart constructor.
data TraceSummary = TraceSummary'{_tsAnnotations ::
                                  !(Maybe (Map Text [ValueWithServiceIds])),
                                  _tsHasThrottle :: !(Maybe Bool),
                                  _tsUsers :: !(Maybe [TraceUser]),
                                  _tsHasFault :: !(Maybe Bool),
                                  _tsServiceIds :: !(Maybe [ServiceId]),
                                  _tsIsPartial :: !(Maybe Bool),
                                  _tsHasError :: !(Maybe Bool),
                                  _tsId :: !(Maybe Text),
                                  _tsHTTP :: !(Maybe HTTP),
                                  _tsDuration :: !(Maybe Double),
                                  _tsResponseTime :: !(Maybe Double)}
                      deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'TraceSummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tsAnnotations' - Annotations from the trace's segment documents.
--
-- * 'tsHasThrottle' - One or more of the segment documents has a 429 throttling error.
--
-- * 'tsUsers' - Users from the trace's segment documents.
--
-- * 'tsHasFault' - One or more of the segment documents has a 500 series error.
--
-- * 'tsServiceIds' - Service IDs from the trace's segment documents.
--
-- * 'tsIsPartial' - One or more of the segment documents is in progress.
--
-- * 'tsHasError' - One or more of the segment documents has a 400 series error.
--
-- * 'tsId' - The unique identifier for the request that generated the trace's segments and subsegments.
--
-- * 'tsHTTP' - Information about the HTTP request served by the trace.
--
-- * 'tsDuration' - The length of time in seconds between the start time of the root segment and the end time of the last segment that completed.
--
-- * 'tsResponseTime' - The length of time in seconds between the start and end times of the root segment. If the service performs work asynchronously, the response time measures the time before the response is sent to the user, while the duration measures the amount of time before the last traced activity completes.
traceSummary
    :: TraceSummary
traceSummary
  = TraceSummary'{_tsAnnotations = Nothing,
                  _tsHasThrottle = Nothing, _tsUsers = Nothing,
                  _tsHasFault = Nothing, _tsServiceIds = Nothing,
                  _tsIsPartial = Nothing, _tsHasError = Nothing,
                  _tsId = Nothing, _tsHTTP = Nothing,
                  _tsDuration = Nothing, _tsResponseTime = Nothing}

-- | Annotations from the trace's segment documents.
tsAnnotations :: Lens' TraceSummary (HashMap Text [ValueWithServiceIds])
tsAnnotations = lens _tsAnnotations (\ s a -> s{_tsAnnotations = a}) . _Default . _Map

-- | One or more of the segment documents has a 429 throttling error.
tsHasThrottle :: Lens' TraceSummary (Maybe Bool)
tsHasThrottle = lens _tsHasThrottle (\ s a -> s{_tsHasThrottle = a})

-- | Users from the trace's segment documents.
tsUsers :: Lens' TraceSummary [TraceUser]
tsUsers = lens _tsUsers (\ s a -> s{_tsUsers = a}) . _Default . _Coerce

-- | One or more of the segment documents has a 500 series error.
tsHasFault :: Lens' TraceSummary (Maybe Bool)
tsHasFault = lens _tsHasFault (\ s a -> s{_tsHasFault = a})

-- | Service IDs from the trace's segment documents.
tsServiceIds :: Lens' TraceSummary [ServiceId]
tsServiceIds = lens _tsServiceIds (\ s a -> s{_tsServiceIds = a}) . _Default . _Coerce

-- | One or more of the segment documents is in progress.
tsIsPartial :: Lens' TraceSummary (Maybe Bool)
tsIsPartial = lens _tsIsPartial (\ s a -> s{_tsIsPartial = a})

-- | One or more of the segment documents has a 400 series error.
tsHasError :: Lens' TraceSummary (Maybe Bool)
tsHasError = lens _tsHasError (\ s a -> s{_tsHasError = a})

-- | The unique identifier for the request that generated the trace's segments and subsegments.
tsId :: Lens' TraceSummary (Maybe Text)
tsId = lens _tsId (\ s a -> s{_tsId = a})

-- | Information about the HTTP request served by the trace.
tsHTTP :: Lens' TraceSummary (Maybe HTTP)
tsHTTP = lens _tsHTTP (\ s a -> s{_tsHTTP = a})

-- | The length of time in seconds between the start time of the root segment and the end time of the last segment that completed.
tsDuration :: Lens' TraceSummary (Maybe Double)
tsDuration = lens _tsDuration (\ s a -> s{_tsDuration = a})

-- | The length of time in seconds between the start and end times of the root segment. If the service performs work asynchronously, the response time measures the time before the response is sent to the user, while the duration measures the amount of time before the last traced activity completes.
tsResponseTime :: Lens' TraceSummary (Maybe Double)
tsResponseTime = lens _tsResponseTime (\ s a -> s{_tsResponseTime = a})

instance FromJSON TraceSummary where
        parseJSON
          = withObject "TraceSummary"
              (\ x ->
                 TraceSummary' <$>
                   (x .:? "Annotations" .!= mempty) <*>
                     (x .:? "HasThrottle")
                     <*> (x .:? "Users" .!= mempty)
                     <*> (x .:? "HasFault")
                     <*> (x .:? "ServiceIds" .!= mempty)
                     <*> (x .:? "IsPartial")
                     <*> (x .:? "HasError")
                     <*> (x .:? "Id")
                     <*> (x .:? "Http")
                     <*> (x .:? "Duration")
                     <*> (x .:? "ResponseTime"))

instance Hashable TraceSummary where

instance NFData TraceSummary where
