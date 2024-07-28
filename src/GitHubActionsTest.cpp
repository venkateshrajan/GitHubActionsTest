// GitHubActionsTest.cpp : Defines the entry point for the application.
//

#include "GitHubActionsTest.h"
#include "gtest/gtest.h"

TEST(GTESTExample, Test1)
{
	EXPECT_TRUE(1 == 1);
}

TEST(GTESTExample, Test2)
{
	EXPECT_FALSE(1 == 2);
}

TEST(GTESTExample, Test3)
{
	EXPECT_FALSE(1 == 2);
}


int main(int argc, char* argv[])
{
	testing::InitGoogleTest(&argc, argv);
	return RUN_ALL_TESTS();
}
