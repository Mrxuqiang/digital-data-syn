/*
================================================================================
��ṹ����:TB_PUBKC
��ṹ����:�ո��ʽ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBKC;
drop index AK_TB_PUBKC;
drop table TB_PUBKC;
create table TB_PUBKC  (
   PUBKC_ID             INTEGER                         not null,  /*�ո��ʽID       */
   PUBKC001             VARCHAR2(4)                     not null,  /*�ո������         */
   PUBKC002             VARCHAR2(30)                    not null,  /*�ո�������         */
   PUBKC003             VARCHAR2(2)                     not null,  /*�ո�������01.�ֽ� 02.������ 03.֧Ʊ 04.���ѿ� 05.����ȯ�����ȯ�� */
                                                                   /*06.����ȯ�� 07.��Ԥ�� 08.�嶩�� 09.�������� 10.�ֽ��ȯ 11.ˢ����ȯ 12.����ת��13,���,14.Ӧ�տ�,15.��Ա����17.�ֽ�ȯ*/
   PUBKC004             VARCHAR2(1),                               /*�Ƿ񿪷�Ʊ         */
   PUBKC005             NUMBER(5,0)                     not null,  /*�ۿ�����˳��       */
   PUBKC006             VARCHAR2(2)                     not null,  /*����λ��˳��       */
   PUBKC007             INTEGER,                                   /*�ֽ��춯��ID       */ 
   PUBKC008             VARCHAR2(1),                               /*������             */ 
   PUBKC009             VARCHAR2(1)                             ,  /*�Ƿ�������         */--20130131 add by xiechun
   PUBKC010             VARCHAR2(1)                             ,  /*�Ƿ������         */--20130131 add by xiechun
   PUBKC011             VARCHAR2(1)                             ,  /*���п����� 01.���̳� 02.���̻�        */
   PUBKC012             VARCHAR2(1)                             ,  /*�����̳� 0��ʾ����ѡ  1��ʾ��ѡ          */--20140620 add by sundan
   PUBKC013             VARCHAR2(1)                             ,  /*����֧�� 0��ʾ����ѡ  1��ʾ��ѡ          */--20140620 add by sundan
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER(1),                                 /*����״̬           */
   constraint PK_TB_PUBKC primary key (PUBKC_ID)
);
create unique index AK_TB_PUBKC on TB_PUBKC (PUBKC001);
create sequence SEQ_TB_PUBKC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBKC to public;
grant index  on TB_PUBKC to public;
grant update on TB_PUBKC to public; 
grant delete on TB_PUBKC to public;  
grant insert on TB_PUBKC to public; 
grant select on SEQ_TB_PUBKC to public;   