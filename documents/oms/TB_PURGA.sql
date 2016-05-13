/*
================================================================================
��ṹ����:TB_PURGA
��ṹ����:�ɹ��˻�������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PURGA;
drop index AK_TB_PURGA;
drop table TB_PURGA;
create table TB_PURGA  (
   PURGA_ID             INTEGER                    not null,       /*�˻���ID         */                                                                                
   PURGA001             VARCHAR2(1)                not null,       /*�˻�����         */  -- mark 20100428                                                                               
   PURGA002             INTEGER                    not null,       /*�˻�����         */                                                                                
   PURGA003             VARCHAR2(30)               not null,       /*�˻�����         */                                                                                
   PURGA004             DATE                       not null,       /*�˻�����         */                                                                                
   PURGA005             INTEGER,                                   /*��Դ��ID         */--20111108 modify by xiechun ��Դ��ID                                                                               
   PURGA006             INTEGER                   not null,        /*�˻�Ӫ����֯     */                                                                                
   PURGA007             INTEGER                   not null,        /*�˻�����         */                                                                                
   PURGA008             INTEGER                   not null,        /*�˻���Ա         */                                                                                
   PURGA009             INTEGER,                                   /*������Ա         */  -- mark 20100428                                                                           
   PURGA010             INTEGER,                                   /*��Ʒ����Ա       */  -- mark 20100428                                                                           
   PURGA011             INTEGER                   not null,        /*��Ӧ��           */                                                                                
   PURGA012             VARCHAR2(1)               not null,        /*��Ӫ��ʽ         */ -- mark 20100428                                                                                
   PURGA013             INTEGER,                                   /*Ӧ���ݹ���ID     */ -- modify 20100427 
   PURGA014             VARCHAR2(255)             not null,        /*�˻�ԭ��         */ --modify by xiechun                                                                               
   PURGA015             VARCHAR2(255),                             /*��ע             */                                                                               
   PURGA016             VARCHAR2(1),                               /*���״̬         */                                                                               
   PURGA017             INTEGER,                                   /*¼����           */                                                                               
   PURGA018             DATE,                                      /*¼������         */                                                                                
   PURGA019             INTEGER,                                   /*�����           */                                                                                
   PURGA020             DATE,                                      /*�������         */
   PURGA021             VARCHAR2(1)                not null,       /*��Դ��������     */--1.�ֹ�¼��2.�ɹ����3.���˵�
   PURGA022             VARCHAR2(30),                              /*��Դ����         */--20111108 add by xiechun
   PURGA023             VARCHAR2(1),                               /*���ͷ�ʽ         */--20111108 add by xiechun1.ͳ��2.ֱ��
   PURGA024             INTEGER,                                   /*�˻��ͻ�         */ --20111117 add by xiechun
   PURGA025             VARCHAR2(30),			           /*��ϵ��	      */ --20111117 add by xiechun
   PURGA026             VARCHAR2(30),			           /*��ϵ�绰	      */ --20111117 add by xiechun
   PURGA027             VARCHAR2(255),                             /*��ַ             */ --20111117 add by xiechun
   PURGA028             VARCHAR2(1),                               /*�˻���ʽ         */ --20120209 add by xiechun1.�ͻ�2.ȡ��
   PURGA029             INTEGER                           ,        /*�˻�ԭ��         */ --20120828 add by xiechun
   PURGA030             VARCHAR2(1),                               /*�᰸״̬         */ --20130107 add by xiechun
   CREATE_USER          VARCHAR2(12),                              /*������Ա         */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����     */                               
   CREATE_DATE          DATE,                                      /*��������         */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա         */
   MODI_DATE            DATE,                                      /*�޸�����         */
   FLAG                 NUMBER(1),                                 /*����״̬         */
   constraint PK_TB_PURGA primary key (PURGA_ID)
);
create unique index AK_TB_PURGA on TB_PURGA (PURGA002,PURGA003);
create sequence SEQ_TB_PURGA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PURGA to public;
grant index  on TB_PURGA to public;
grant update on TB_PURGA to public; 
grant delete on TB_PURGA to public;  
grant insert on TB_PURGA to public; 
grant select on SEQ_TB_PURGA to public;   