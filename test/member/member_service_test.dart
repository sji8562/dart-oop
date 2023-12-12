import 'package:flutter_test/flutter_test.dart';
import 'package:test1/member/grade.dart';
import 'package:test1/member/member.dart';
import 'package:test1/member/repository/member_repository.dart';
import 'package:test1/member/repository/memory_member_repository_impl.dart';
import 'package:test1/member/service/member_service.dart';
import 'package:test1/member/service/member_service_impl.dart';

void main(){
  test('회원 서비스 테스트 1', () {
    //given

    MemberRepository memberRepository = MemoryMemberRepositoryImpl();
    MemberService memberService = MemberServiceImpl(memberRepository);
    Member member = Member( id: 1, name: '홍길동', grade: Grade.VIP);
    memberService.signUp(member);
    //when
    //then
  });
}