/*
================================================================================
��ṹ����:TB_PUBIN
��ṹ����:�����Զ����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBIN;
drop index AK_TB_PUBIN;
drop table TB_PUBIN;
create table TB_PUBIN  (
   PUBIN_ID             INTEGER                         not null,  /*�Զ�������ID              */
   PUBIN001             VARCHAR2(100)                   not null,  /*���ƶ���                    */
   PUBIN002             INTEGER                         not null,  /*���                        */
   PUBIN003             INTEGER,                                   /*�㼶��                      */
   PUBIN004             VARCHAR2(1),                               /*�Ƿ����                    */
   PUBIN005             VARCHAR2(1),                               /*�Ƿ�����                    */
   PUBIN006             VARCHAR2(1),                               /*�Ƿ��ѡ*/
   PUBIN007             VARCHAR2(1),                               /*�ڵ����ͣ�1.���ڵ�(���ڵ���Ψһ)��2.�м�ڵ㡢3.Ҷ�ڵ㣩*/
   PUBIN008             INTEGER,                                   /*�ӽڵ��ֵܽڵ���                  */
   PUBIN009             INTEGER,                                   /*�ϼ��Զ������ID            */
   PUBIN010             VARCHAR2(100),                             /*��ҵ��                      */
   PUBIN011             VARCHAR2(100),                             /*�󶨵ı�                    */
   PUBIN012             VARCHAR2(100),                             /*ӳ���ֶ�ID                  */
   PUBIN013             VARCHAR2(100),                             /*ӳ���ֶζ�����              */
   PUBIN014             VARCHAR2(100),                             /*ӳ���ֶ�������              */
   PUBIN015             VARCHAR2(100),                             /*����ͼ                      */
   PUBIN016             VARCHAR2(100),                             /*����ͼ                      */
   PUBIN017             VARCHAR2(100),                             /*������������                */
   PUBIN018             VARCHAR2(100),                             /*��������                    */
   PUBIN019             VARCHAR2(100),                             /*�Ƿ�ֻ��                    */
   PUBIN020             VARCHAR2(100),                             /*������ʾ����                 */
   PUBIN021             VARCHAR2(100),                             /*ӳ���ֶζ���ʾ����                       */
   PUBIN022             VARCHAR2(100),                             /**ӳ���ֶ�����ʾ����                       */
   PUBIN023             VARCHAR2(100),                             /*���ܹ�Ϊ��                      */
   PUBIN024             VARCHAR2(100),                             /*�����������                      */
   PUBIN025             VARCHAR2(100),                             /*ֵ��������ֶ�                      */
   PUBIN026             VARCHAR2(100),                             /*����13                      */
   PUBIN027             VARCHAR2(100),                             /*����14                      */
   CREATE_USER          VARCHAR2(12),                              /*������                      */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����                */                               
   CREATE_DATE          DATE,                                      /*��������                    */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա                    */
   MODI_DATE            DATE,                                      /*�޸�����                    */
   FLAG                 NUMBER(1),                                 /*����״̬                    */
   constraint PK_TB_PUBIN primary key (PUBIN_ID)
);
                                 
create unique index AK_TB_PUBIN on TB_PUBIN (PUBIN001,FLAG);
create sequence SEQ_TB_PUBIN minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBIN to public;
grant index  on TB_PUBIN to public;
grant update on TB_PUBIN to public; 
grant delete on TB_PUBIN to public;  
grant insert on TB_PUBIN to public; 
grant select on SEQ_TB_PUBIN to public;   