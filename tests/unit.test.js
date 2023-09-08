import { mount } from '@vue/test-utils';

const MyComponent = {
  template: '<div>{{ message }}</div>',
  props: {
    message: String,
  },
};

test('renders the message prop', () => {
  const wrapper = mount(MyComponent, {
    propsData: {
      message: 'Hello world!',
    },
  });

  expect(wrapper.text()).toBe('Hello world!');
});