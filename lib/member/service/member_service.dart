//역할
import 'package:test1/member/member.dart';

abstract class MemberService{

  void signUp(Member member);
  Member? findByIdMember(num memberId);

}