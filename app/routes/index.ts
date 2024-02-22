import Route from '@ember/routing/route';
import viewTransitions from 'view-transitions-demo/utils/view-transitions';

export default class IndexRoute extends Route {
  async afterModel() {
    await viewTransitions();
  }
}
