#include <roxe/roxe.hpp>
#include <roxe/tester.hpp>

#include <hello.hpp>

using namespace roxe;
using namespace roxe::native;

// need to create a dispatcher, codegen will not be done for native builds until a later release
ROXE_DISPATCH(hello, (hi)(check))

ROXE_TEST_BEGIN(hello_test)
   // These can be redefined by the user to suit there needs per unit test
   // the idea is that in a future release we will have a base library that 
   // initializes these to "useable" default implementations and probably 
   // helpers to more easily define read_action_data and action_data_size intrinsics
   // like these
   intrinsics::set_intrinsic<intrinsics::read_action_data>(
         [](void* m, uint32_t len) {
            check(len <= sizeof(roxe::name), "failed from read_action_data");
            *((roxe::name*)m) = "hello"_n;
            return len; 
         });

   intrinsics::set_intrinsic<intrinsics::action_data_size>(
         []() {
            return (uint32_t)sizeof(roxe::name);
         });
   
   intrinsics::set_intrinsic<intrinsics::require_auth>(
         [](capi_name nm) {
         });

   
   // "Name : hello" should be in the print buffer
   CHECK_PRINT("Name : hello",
         []() {
            apply("test"_n.value, "test"_n.value, "hi"_n.value);
            });
           
   // should not assert
   apply("test"_n.value, "test"_n.value, "check"_n.value);
   
   name nm = "null"_n;
   intrinsics::set_intrinsic<intrinsics::read_action_data>(
         [&](void* m, uint32_t len) {
            check(len <= sizeof(roxe::name), "failed from read_action_data");
            *((roxe::name*)m) = nm;
            return len; 
         });

   REQUIRE_ASSERT( "check name not equal to `hello`",
         []() {
            // should assert
            apply("test"_n.value, "test"_n.value, "check"_n.value);
            });

ROXE_TEST_END

// boilerplate main, this will be generated in a future release
int main(int argc, char** argv) {
   silence_output(true);
   ROXE_TEST(hello_test);
   return has_failed();
}
