
/*
================================================================================
��ṹ����:TB_SALBP
��ṹ����:���˵���Ʒ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SALBP;
drop index AK_TB_SALBP;
drop table TB_SALBP;
create table TB_SALBP  (
   SALBP_ID             INTEGER                         not null,  /*���˵���ƷID                                   */
   SALBP001             INTEGER                         not null,  /*���˵�ID                                       */
   SALBP002             INTEGER,                                   /*��Դ����ƷID                                   */
   SALBP003             INTEGER,                                   /*��Ʒ����ID                                     */
   SALBP004             INTEGER                         not null,  /*��Ʒ����ID                                     */
   SALBP005             VARCHAR2(1)                     not null,  /*�Ƿ���װƷ                                     */
   SALBP006             VARCHAR2(1),                               /*�Ƿ�ɷ�                                       */
   SALBP007             INTEGER,                                   /*������װƷID                                   */
   SALBP008             VARCHAR2(1),                               /*�Ƿ����Ʒ                                     */
   SALBP009             INTEGER                         not null,  /*ԭ��ƷID                                       */
   SALBP010             INTEGER,                                   /*���׵�λID        				    */
   SALBP011             NUMBER(18,3),                              /*��������          				    */
   SALBP012             VARCHAR2(1)                     not null,  /*��Ӫ��ʽ                                       */
   SALBP013             INTEGER                         not null,  /*����ID                                         */
   SALBP014             INTEGER                         not null,  /*Ʒ��ID                                         */
   SALBP015             NUMBER(5),                                 /*��������                                       */
   SALBP016             INTEGER                         not null,  /*Ʒ��ID                                         */
   SALBP017             INTEGER,                                   /*ά��1ID                                        */
   SALBP018             INTEGER,                                   /*ά��2ID                                        */
   SALBP019             INTEGER,                                   /*ά��3ID                                        */
   SALBP020             INTEGER,                                   /*ά��4ID                                        */
   SALBP021             INTEGER,                                   /*ά��5ID                                        */
   SALBP022             INTEGER                         not null,  /*���˵�λID                                     */
   SALBP023             NUMBER(12,2)                    not null,  /*������                                         */
   SALBP024             INTEGER                         not null,  /*�ֿ�ID                                         */
   SALBP025             NUMBER(18,3),                              /*���ÿ����                                     */
   SALBP026             NUMBER(12,2)                    not null,  /*ԭ�ۼ�                                         */
   SALBP027             NUMBER(12,2)                    not null,  /*����                                           */
   SALBP028             NUMBER(18,3)                    not null,  /*�˻�����                                       */
   SALBP029             NUMBER(18,3),                              /*�ѽ�����                                       */
   SALBP030             INTEGER                         not null,  /*˰��ID                                         */
   SALBP031             NUMBER(12,2)                    not null,  /*˰��(%)                                        */
   SALBP032             NUMBER(12,2)                    not null,  /*δ˰���                                       */
   SALBP033             NUMBER(12,2)                    not null,  /*��˰���                                       */
   SALBP034             NUMBER(12,2),                              /*ԭ����(%)                                      */
   SALBP035             NUMBER(12,2),                              /*�¿���(%)                                      */
   SALBP036             NUMBER(12,2),                              /*�����ۼ�                                       */
   SALBP037             NUMBER(12,2),                              /*С���ۼ�                                       */
   SALBP038             NUMBER(12,2),                              /*�����ۼ�                                       */
   SALBP039             NUMBER(12,2),                              /*��Ա�ۼ�                                       */
   SALBP040             NUMBER(12,2),                              /*��Ա�ۿۿ��ۼ�                                 */
   SALBP041             NUMBER(12,2),                              /*�����ؼ��ۼ�                                   */
   SALBP042             NUMBER(12,2),                              /*�����ۿ��ۼ�                                   */
   SALBP043             NUMBER(12,2),                              /*��������ۼ�                                   */
   SALBP044             NUMBER(12,2)                    not null,  /*�ۺ�δ˰���(���������ۼ�)                     */
   SALBP045             NUMBER(12,2)                    not null,  /*�ۺ�˰���(���������ۼ�)                     */
   SALBP046             NUMBER(12,2),                              /*�����ۼۿۼ�                                   */
   SALBP047             NUMBER(12,2),                              /*ʵ�˿���                                     */
   SALBP048             NUMBER(12,2)                    not null,  /*�ۺ󵥼�                                       */
   SALBP049             NUMBER(12,2)                    not null,  /*�ۺ�δ˰���                                   */
   SALBP050             NUMBER(12,2)                    not null,  /*�ۺ�˰���                                   */
   SALBP051             VARCHAR2(30),                              /*������                                         */
   SALBP052             VARCHAR2(30),                              /*������                                         */
   SALBP053             NUMBER(18,3),                              /*��������                                       */
   SALBP054             NUMBER(12,2),                              /*���˽��                                       */
   SALBP055             INTEGER,                                   /*Ӧ���ݹ���ID                                   */
   CREATE_USER          VARCHAR2(12),                              /*������Ա                                       */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����                                   */                               
   CREATE_DATE          DATE,                                      /*��������                                       */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա                                       */
   MODI_DATE            DATE,                                      /*�޸�����                                       */
   FLAG                 NUMBER(1),                                 /*����״̬                                       */
   constraint PK_TB_SALBP primary key (SALBP_ID)
);
create index AK_TB_SALBP on TB_SALBP (SALBP_ID,SALBP001,SALBP004);
create sequence SEQ_TB_SALBP minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SALBP to public;
grant index  on TB_SALBP to public;
grant update on TB_SALBP to public; 
grant delete on TB_SALBP to public;  
grant insert on TB_SALBP to public; 
grant select on SEQ_TB_SALBP to public;   