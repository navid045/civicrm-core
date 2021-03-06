{*
 +--------------------------------------------------------------------+
 | CiviCRM version 4.7                                                |
 +--------------------------------------------------------------------+
 | Copyright CiviCRM LLC (c) 2004-2017                                |
 +--------------------------------------------------------------------+
 | This file is a part of CiviCRM.                                    |
 |                                                                    |
 | CiviCRM is free software; you can copy, modify, and distribute it  |
 | under the terms of the GNU Affero General Public License           |
 | Version 3, 19 November 2007 and the CiviCRM Licensing Exception.   |
 |                                                                    |
 | CiviCRM is distributed in the hope that it will be useful, but     |
 | WITHOUT ANY WARRANTY; without even the implied warranty of         |
 | MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.               |
 | See the GNU Affero General Public License for more details.        |
 |                                                                    |
 | You should have received a copy of the GNU Affero General Public   |
 | License and the CiviCRM Licensing Exception along                  |
 | with this program; if not, contact CiviCRM LLC                     |
 | at info[AT]civicrm[DOT]org. If you have questions about the        |
 | GNU Affero General Public License or the licensing of CiviCRM,     |
 | see the CiviCRM license FAQ at http://civicrm.org/licensing        |
 +--------------------------------------------------------------------+
*}
{*Table displays contribution totals for a contact or search result-set *}
{if $annual.count OR $contributionSummary}
    <table class="form-layout-compressed">

    {if $annual.count}
        <tr>
            <th class="contriTotalLeft right">{ts}Current Year-to-Date{/ts} &ndash; {$annual.amount}</th>
            <th class="right"> &nbsp; {ts}# Completed Contributions{/ts} &ndash; {$annual.count}</th>
            <th class="right contriTotalRight"> &nbsp; {ts}Avg Amount{/ts} &ndash; {$annual.avg}</th>
            {if $contributionSummary.cancel.amount}
                <td>&nbsp;</td>
            {/if}
        </tr>
    {/if}

    {if $contributionSummary }
      <tr>
          {if $contributionSummary.total.amount}
            {if $contributionSummary.total.currencyCount gt 1}
              <th class="contriTotalLeft right">{ts}Total{/ts} &ndash; {$contributionSummary.total.amount}</th>
              <th class="left contriTotalRight"> &nbsp; {ts}# Completed{/ts} &ndash; {$contributionSummary.total.count}</th>
            </tr><tr>
              <th class="contriTotalLeft">{ts}Avg{/ts} &ndash; {$contributionSummary.total.avg}</th>
              <th class="right"> &nbsp; {ts}Median{/ts} &ndash; {$contributionSummary.total.median}</th>
              <th class="right contriTotalRight"> &nbsp; {ts}Mode{/ts} &ndash; {$contributionSummary.total.mode}</th>
            {else}
              <th class="contriTotalLeft right">{ts}Total{/ts} &ndash; {$contributionSummary.total.amount}</th>
              <th class="right"> &nbsp; {ts}# Completed{/ts} &ndash; {$contributionSummary.total.count}</th>
              <th class="right"> &nbsp; {ts}Avg{/ts} &ndash; {$contributionSummary.total.avg}</th>
              <th class="right"> &nbsp; {ts}Median{/ts} &ndash; {$contributionSummary.total.median}</th>
              <th class="right contriTotalRight"> &nbsp; {ts}Mode{/ts} &ndash; {$contributionSummary.total.mode}</th>
            {/if}
          {/if}
          {if $contributionSummary.cancel.amount}
            <th class="disabled right contriTotalRight"> &nbsp; {ts}Total Cancelled Amount{/ts} &ndash; {$contributionSummary.cancel.amount}</th>
          {/if}
      </tr>
      {if $contributionSummary.soft_credit.count}
      <tr>
        <th class="contriTotalLeft right">{ts}Total Soft Credit Amount{/ts} &ndash; {$contributionSummary.soft_credit.amount}</th>
        <th class="right"> &nbsp; {ts}# Completed Soft Credits{/ts} &ndash; {$contributionSummary.soft_credit.count}</th>
        <th class="right contriTotalRight"> &nbsp; {ts}Avg Soft Credit Amount{/ts} &ndash; {$contributionSummary.soft_credit.avg}</th>
      </tr>
      {/if}
    {/if}

    </table>
{/if}
