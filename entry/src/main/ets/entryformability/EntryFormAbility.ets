import { formBindingData, FormExtensionAbility, formInfo, formProvider } from '@kit.FormKit';
import { Want } from '@kit.AbilityKit';
import { subscriberClass } from '../utils';

/**
 * 卡片的ability
 */
export default class EntryFormAbility extends FormExtensionAbility {
  // 新增卡片:onAddForm
  onAddForm(want: Want) {
    // Called to return a FormBindingData object.
    let formData = '';
    // 1.新增卡片的时候要知道卡片的ID
    let formId = want.parameters![formInfo.FormParam.IDENTITY_KEY] as string
    // 2.卡片ID通知卡片页面
    // formProvider.updateForm(formId, formBindingData.createFormBindingData({
    //   value:
    // }))
    // 3.订阅页面通知我的事件
    subscriberClass.subscribe('cardUpdate', (event) => {
      // event:订阅结果
      // 将数据更新给卡片的localStorage
      formProvider.updateForm(formId, formBindingData.createFormBindingData({
        value: event
      }))
    })

    return formBindingData.createFormBindingData(formData);
  }

  onCastToNormalForm(formId: string) {
    // Called when the form provider is notified that a temporary form is successfully
    // converted to a normal form.
  }

  onUpdateForm(formId: string) {
    // Called to notify the form provider to update a specified form.
  }

  onFormEvent(formId: string, message: string) {
    console.log('==message = ' + message)
    // Called when a specified message event defined by the form provider is triggered.
    const value: string = JSON.parse(message)['value']
    subscriberClass.publish('appUpdate', value)
  }

  onRemoveForm(formId: string) {
    // Called to notify the form provider that a specified form has been destroyed.
  }

  onAcquireFormState(want: Want) {
    // Called to return a {@link FormState} object.
    return formInfo.FormState.READY;
  }
};