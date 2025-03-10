import { Context } from 'aws-lambda';
import { LambdaEvent } from '@interfaces/lambdaEvent';

export const handler = async (event: LambdaEvent, context: Context) => {
  const { functionName } = context;

  const { action, data } = event;

  console.log(
    `Lambda event received for ${functionName}. action=${action}, data=${data}`,
  );
};
