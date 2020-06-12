{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.StoppingCondition
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.SageMaker.Types.StoppingCondition where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Specifies how long model training can run. When model training reaches the limit, Amazon SageMaker ends the training job. Use this API to cap model training cost.
--
--
-- To stop a job, Amazon SageMaker sends the algorithm the @SIGTERM@ signal, which delays job termination for120 seconds. Algorithms might use this 120-second window to save the model artifacts, so the results of training is not lost. 
--
-- Training algorithms provided by Amazon SageMaker automatically saves the intermediate results of a model training job (it is best effort case, as model might not be ready to save as some stages, for example training just started). This intermediate data is a valid model artifact. You can use it to create a model (@CreateModel@ ). 
--
--
-- /See:/ 'stoppingCondition' smart constructor.
newtype StoppingCondition = StoppingCondition'{_scMaxRuntimeInSeconds
                                               :: Maybe Nat}
                              deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'StoppingCondition' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scMaxRuntimeInSeconds' - The maximum length of time, in seconds, that the training job can run. If model training does not complete during this time, Amazon SageMaker ends the job. If value is not specified, default value is 1 day. Maximum value is 5 days.
stoppingCondition
    :: StoppingCondition
stoppingCondition
  = StoppingCondition'{_scMaxRuntimeInSeconds =
                         Nothing}

-- | The maximum length of time, in seconds, that the training job can run. If model training does not complete during this time, Amazon SageMaker ends the job. If value is not specified, default value is 1 day. Maximum value is 5 days.
scMaxRuntimeInSeconds :: Lens' StoppingCondition (Maybe Natural)
scMaxRuntimeInSeconds = lens _scMaxRuntimeInSeconds (\ s a -> s{_scMaxRuntimeInSeconds = a}) . mapping _Nat

instance FromJSON StoppingCondition where
        parseJSON
          = withObject "StoppingCondition"
              (\ x ->
                 StoppingCondition' <$> (x .:? "MaxRuntimeInSeconds"))

instance Hashable StoppingCondition where

instance NFData StoppingCondition where

instance ToJSON StoppingCondition where
        toJSON StoppingCondition'{..}
          = object
              (catMaybes
                 [("MaxRuntimeInSeconds" .=) <$>
                    _scMaxRuntimeInSeconds])
