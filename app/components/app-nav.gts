import { LinkTo } from '@ember/routing';
import Component from '@glimmer/component';

interface AppNavSignature {
  Args: {};
  Element: HTMLDivElement;
}

// eslint-disable-next-line ember/no-empty-glimmer-component-classes
export default class AppNav extends Component<AppNavSignature> {
  <template>
    <header>
      <ul class='flex flex-row justify-around'>
        <li>
          <LinkTo class='mx-6 p-2 flex flex-col' @route='index'>
            <span class='h-1 w-full' data-indicator></span>
            <span>Home</span>
          </LinkTo>
        </li>
        <li>
          <LinkTo class='mx-6 p-2 flex flex-col' @route='about'>
            <span class='h-1 w-full' data-indicator></span>
            <span>About</span>
          </LinkTo>
        </li>
        <li>
          <LinkTo class='mx-6 p-2 flex flex-col' @route='more'>
            <span class='h-1 w-full' data-indicator></span>
            <span>More stuff</span>
          </LinkTo>
        </li>
      </ul>
    </header>
  </template>
}

declare module '@glint/environment-ember-loose/registry' {
  export default interface Registry {
    AppNav: typeof AppNav;
    'app-nav': typeof AppNav;
  }
}
