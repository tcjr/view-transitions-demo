import Route from '@ember/routing/route';
import viewTransitions from 'view-transitions-demo/utils/view-transitions';

export default class AboutRoute extends Route {
  async afterModel() {
    await viewTransitions();
  }
}
