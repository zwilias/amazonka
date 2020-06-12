{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Snowball.Types.JobResource
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Snowball.Types.JobResource where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Snowball.Types.LambdaResource
import Network.AWS.Snowball.Types.S3Resource

-- | Contains an array of @S3Resource@ objects. Each @S3Resource@ object represents an Amazon S3 bucket that your transferred data will be exported from or imported into.
--
--
--
-- /See:/ 'jobResource' smart constructor.
data JobResource = JobResource'{_jrLambdaResources ::
                                !(Maybe [LambdaResource]),
                                _jrS3Resources :: !(Maybe [S3Resource])}
                     deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'JobResource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jrLambdaResources' - The Python-language Lambda functions for this job.
--
-- * 'jrS3Resources' - An array of @S3Resource@ objects.
jobResource
    :: JobResource
jobResource
  = JobResource'{_jrLambdaResources = Nothing,
                 _jrS3Resources = Nothing}

-- | The Python-language Lambda functions for this job.
jrLambdaResources :: Lens' JobResource [LambdaResource]
jrLambdaResources = lens _jrLambdaResources (\ s a -> s{_jrLambdaResources = a}) . _Default . _Coerce

-- | An array of @S3Resource@ objects.
jrS3Resources :: Lens' JobResource [S3Resource]
jrS3Resources = lens _jrS3Resources (\ s a -> s{_jrS3Resources = a}) . _Default . _Coerce

instance FromJSON JobResource where
        parseJSON
          = withObject "JobResource"
              (\ x ->
                 JobResource' <$>
                   (x .:? "LambdaResources" .!= mempty) <*>
                     (x .:? "S3Resources" .!= mempty))

instance Hashable JobResource where

instance NFData JobResource where

instance ToJSON JobResource where
        toJSON JobResource'{..}
          = object
              (catMaybes
                 [("LambdaResources" .=) <$> _jrLambdaResources,
                  ("S3Resources" .=) <$> _jrS3Resources])
