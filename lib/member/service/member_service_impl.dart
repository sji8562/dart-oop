import 'package:test1/member/member.dart';
import 'package:test1/member/repository/member_repository.dart';
import 'package:test1/member/repository/memory_member_repository_impl.dart';
import 'package:test1/member/service/member_service.dart';

class MemberServiceImpl implements MemberService{

  //DIP -디펜던시 인벌전 프린시펄
  //상위 모듈은 하위 모듈에 의존해서는 안된다. 상위 모듈과 하위 모듈은 추상화에 의존해야 한다.
  //즉 의존성은 추상화에 대해 이루어져야하며, 세부 사항에 대해 이루어져서는 안된다.
  MemberRepository memberRepository;
  //생성자 의존 주입
  MemberServiceImpl(this.memberRepository);
  //MemoryMemberRepositoryImpl

  @override
  Member? findByIdMember(num memberId) {

   return memberRepository.findById(memberId);
  }

  @override
  void signUp(Member member) {
    memberRepository.save(member);
  }

}