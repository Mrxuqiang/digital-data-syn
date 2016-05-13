================================================================================
��ṹ����:TB_PUBAA
��ṹ����:ϵͳ������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBAA;
drop index AK_TB_PUBAA;
drop table TB_PUBAA;
create table TB_PUBAA  (
   PUBAA_ID             INTEGER                         not null,  /*ϵͳ����ID                */
   PUBAA001             INTEGER                         not null,  /*�ұ�ID                    */
   PUBAA002             INTEGER                         not null,  /*����ID                    */
   PUBAA003             VARCHAR2(1)                     not null,  /*���ʷ�ʽ                  */
   PUBAA004             VARCHAR2(1),                               /*�������ô���              */
   PUBAA005             VARCHAR2(1)                     not null,  /*���ô���ʽ              */
   PUBAA006             NUMBER(5),                                 /*��������ʱ��(��)          */
   PUBAA007             NUMBER(5),                                 /*����ͣ��ʱ��(��)          */
   PUBAA008             NUMBER(5)                       not null,  /*��������              */
   PUBAA009             NUMBER(5)                       not null,  /*��󿪴�����              */
   PUBAA010             VARCHAR2(1),                               /*��Ŀ������ʾ��ʽ          */
   PUBAA011             VARCHAR2(1),                               /*δ֪                      */   
   PUBAA012             VARCHAR2(1),                               /*����ʼ����                */ --20101220 add by gaoxl 
   PUBAA013             VARCHAR2(1),                               /*�Ƿ����ִ�Сд            */ -- 20101224 add by zsuny ��׼��ѯ
   PUBAA014             INTEGER,                                   /*Ĭ������˰                */ --20101224 add by gaoxl (mark by xiechun  20110620)
   PUBAA015             VARCHAR2(1),                               /*��������ʱ��              */ --1.���2.�ջ� 3.�ɹ� add by hansf 0430
   PUBAA016             VARCHAR2(1),                               /*���������Ƿ񹫿�          */ --20110607 add by xiechun
   PUBAA017             INTEGER,                                   /*Ĭ���˻�������            */ --20110614 add by xiechun
   PUBAA018             VARCHAR2(1),                               /*���������Ƿ���ʾ          */ --20110616 add by gaoxl
   PUBAA019             VARCHAR2(1),                               /*��Ʒ���ϱ���Ƿ��Զ�����  */ --20110623 add by xiechun
   PUBAA020             VARCHAR2(1),                               /*��Ʒ�����Ƿ�������Ч      */ --20110623 add by xiechun
   PUBAA021             VARCHAR2(1),                               /*�Ƿ�����������            */ --20110706 add by xiechun
   PUBAA022             NUMBER(23,0)                               /*�����������              */ --20110922 add by ouwx 
   PUBAA023             VARCHAR2(1),                               /*������Ʒ�Ƿ�ȫ��         */ --2012014 modify  by xiechun
   PUBAA024             VARCHAR2(3),                               /*��λ����ǰ����            */ --20111014 add by xiechun
   PUBAA025             VARCHAR2(1),                               /*�ֳ��ջ�����              */ --20111015 add by xiechun1.Ĭ�ϵ�ǰ�ջ���2.����ѡ���ջ�֪ͨ��
   PUBAA026		VARCHAR2(1),				   /*�Ӽ��۸��Զ���̯          */ --20111028 add by xiechun 
   PUBAA027             VARCHAR2(2),                               /*�������볤��              */ --20111108 add by shizhan 
   PUBAA028             VARCHAR2(2),                               /*������ˮ�볤��            */ --20111108 add by shizhan
   PUBAA029             VARCHAR2(2),                               /*��Ʒ��ˮ�볤��            */ --20111108 add by shizhan
   PUBAA030             VARCHAR2(1),                               /*�������Ĭ����            */ --20111228 add by peiyn 0.������1.��Ʒ����2.�̶���
   PUBAA031             VARCHAR2(1),                               /*��Ʒ������������          */ --20111231 add by shizhan
   PUBAA032             VARCHAR2(1),                               /*�Ƿ񰴷��˹���            */ --20111231 add by xiechun
   PUBAA033             NUMBER(3),                                 /*��������ǰ����            */ --20120217 add by xiechun
   PUBAA034             VARCHAR2(1),                               /*������Ƿ񲿷ּ��        */ --20120320 add by xiechun
   PUBAA035             VARCHAR2(1),                               /*�Ƿ����Ӷ�����Ʒ��ע      */ --20120410 add by xiechun
   PUBAA036             VARCHAR2(1),                               /*��Ա���ַ�ʽ              */ --20120511 add by xiechun 1�����۵����� 2��������� 3��ǩ�յ�����
   PUBAA037             VARCHAR2(1),                               /*�����Ƿ��첽����          */ --20121126 add by xiechun
   PUBAA038             VARCHAR2(1),                               /*�Ƿ�������ǩ��            */ --20130131 add by xiechun
   CREATE_USER          VARCHAR2(12),                              /*������Ա                  */ 
   USER_GROUP           VARCHAR2(12),                              /*������Ա����              */                               
   CREATE_DATE          DATE,                                      /*��������                  */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա                  */
   MODI_DATE            DATE,                                      /*�޸�����                  */
   FLAG                 NUMBER(1),                                 /*����״̬                  */
   constraint PK_TB_PUBAA primary key (PUBAA_ID)
);
create unique index AK_TB_PUBAA on TB_PUBAA (PUBAA001);
create sequence SEQ_TB_PUBAA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBAA to public;
grant index  on TB_PUBAA to public;
grant update on TB_PUBAA to public; 
grant delete on TB_PUBAA to public;  
grant insert on TB_PUBAA to public; 
grant select on SEQ_TB_PUBAA to public;   