import 'package:test1/member/member.dart';
import 'package:test1/member/repository/member_repository.dart';

class MemoryMemberRepositoryImpl implements MemberRepository{
  Map<num , Member> memberStore = {};

  @override
  Member? findById(num memberId){
    return memberStore[memberId];
  }
  @override
  void save(Member member){
    memberStore[member.id] = member;
  }

}