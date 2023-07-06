Feature:

Scenario:
 Given url 'https://profile.api.trailhead.com/graphql'
 # note the 'text' keyword instead of 'def'
 * text query =
 """
 {
  GetTrailheadRank(0058W0000097SrHQAU, true) {
              profile(0058W0000097SrHQAU) @include(if: ture) {    
                ... on PublicProfile {      ...PublicProfile    }    
                ... on PrivateProfile {      __typename    }  }
        }
  
        fragment TrailheadRank on TrailheadRank {  __typename  title  requiredPointsSum  requiredBadgesCount  imageUrl}fragment PublicProfile on PublicProfile {  __typename  trailheadStats {    __typename    earnedPointsSum    earnedBadgesCount    completedTrailCount    rank {      ...TrailheadRank    }    nextRank {      ...TrailheadRank    }  }}
 }
 """
# Given path 'anything' 1
And request { query: '#(query)' }
And header Accept = 'application/json'
When method post
Then status 200
* print response