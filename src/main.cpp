#include <gtest-1.6.0/gtest/gtest.h>

TEST( set, test0 )
{
	EXPECT_EQ( 0, 0 );
	return;
}

TEST( set, test1 )
{
	EXPECT_EQ( 0, 0 );
	return;
}

TEST( set, test2 )
{
	EXPECT_EQ( 0, 1 );
	return;
}

TEST( set, test3 )
{
	EXPECT_EQ( 0, 0 );
	return;
}

int main(int argc, char* argv[])
{
	::testing::InitGoogleTest(&argc, argv);
	

	return RUN_ALL_TESTS();
}

